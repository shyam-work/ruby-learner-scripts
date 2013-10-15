#!/usr/local/bin/ruby

require './http_faraday'

class ChatterAccessor
attr_reader :m_faradayConn, :m_instanceUrl, :m_version, :m_accessToken, :m_clientId, :m_clientSecret;
attr_reader :baseUrl;
def initialize
end

def init (instanceUrl, accessToken, clientId, clientSecret)
    @servicesDataVersion = "/services/data/v28.0"; 
    @m_version = '28';
    @m_accessToken = accessToken;
    @m_clientId = clientId;
    @m_clientSecret = clientSecret;
    @m_instanceUrl = instanceUrl;
    @baseUrl = @m_instanceUrl + @servicesDataVersion;
    puts @baseUrl;
    @m_faradayConn = Faraday::Connection.new(:url => @baseUrl);
end

def retrieve_feed (userString)
    feedString = '/chatter/feeds/news/' + userString + '/feed-items';
    conn = Faraday::Connection.new(@baseUrl + feedString);
    response = conn.get();
    puts(response.status);
    headers = {'Authorization' => 'OAuth ' + @m_accessToken,  :accept =>  'application/json' };
    puts @baseUrl;
    @m_faradayConn = Faraday::Connection.new(:url => @baseUrl);
    puts feedString;
    response = @m_faradayConn.get(feedString, {}, headers);
    puts(response.status);
end

#include HttpHelper;

end

ca = ChatterAccessor.new ;
ca.init('https://na3.salesforce.com', '23', '34', '55');
ca.retrieve_feed('me');
