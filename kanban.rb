require 'rubygems'
require 'sinatra'
require 'ruby-debug'
require 'active_support/all'
require 'uri'

get '/hi' do
  "Hello World!"
end

get '/board' do
  debugger if params.keys.include?('debug')
  params.inspect
end

def parse_query(query)
  unescaped_query = URI.unescape(query)
  broken_query = unescaped_query.match '^(.+)=(.+)$'
  board_name = broken_query[1]
  columns_and_cards = broken_query[2]
end
