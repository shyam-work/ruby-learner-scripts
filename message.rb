#!/usr/local/bin/ruby

class Message

attr_accessor :name, :email, :content

def initialize(attributes = {})
    attributes.each do |name, value|
    send("#{name}=", value)
    end
end

def persisted?
    false
end

end

msg = Message.new( {'name' => 'My name', :email => 'My Value'} );
puts msg.inspect

