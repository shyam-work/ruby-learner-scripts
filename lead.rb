#!/usr/local/bin/ruby
require 'json'
#
class Lead
    attr_accessor :first_name, :last_name, :title, :middle_name, :date_of_birth, :email, :city, :state, :country, :address1, :address2, :zip_code, :twitter, :phone, :phone2, :full_name, :fax, :web, :company, :all_attributes;

def initialize(attributes = {})
    attributes.each do |name, value|
        send("#{name}=", value)
    end
    @all_attributes = attributes;
end

def to_json()
    @all_attributes.to_json
end

def self.from_json string
    data = JSON.load string
    return self.new data;
end

def to_s()
    "#{first_name} #{last_name} #{company} #{city} #{country} #{email}";
end
end


def createHash(attributesArray) 
    output = {} ;
#//FirstName,LastName,Company,Address,City,County,State,ZIP,Phone,Fax,Email,Web
    output['first_name'] = attributesArray[0].gsub(/"/, '');
    output['last_name'] = attributesArray[1].gsub(/"/, '');
    output['company'] = attributesArray[2].gsub(/"/, '');
    output['address1'] = attributesArray[3].gsub(/"/, '');
    output['city'] = attributesArray[4].gsub(/"/, '');
    output['country'] = attributesArray[5].gsub(/"/, '');
    output['state'] = attributesArray[6].gsub(/"/, '');
    output['zip_code'] = attributesArray[7].gsub(/"/, '');
    output['phone'] = attributesArray[8].gsub(/"/, '');
    output['fax'] = attributesArray[9].gsub(/"/, '');
    output['email'] = attributesArray[10].gsub(/"/, '');
    output['web'] = attributesArray[11].gsub(/"/, '');
    return output;
end

aLead = Lead.new({ :first_name => 'Pankaj', :last_name => 'Shah'});
puts aLead.to_s();

file = File.new("5000.csv", "r");
counter = -1;
outArray = Array.new
listOfLeads = [];
while (line = file.gets)
    counter = counter + 1;
    next if (counter < 1);
    contents = line.split(",");
    next if contents.length != 12;
    attrib = createHash(contents);
    listOfLeads[counter] = Lead.new (attrib);
end
file.close

puts listOfLeads[Random.rand(0...4999)].to_json;

