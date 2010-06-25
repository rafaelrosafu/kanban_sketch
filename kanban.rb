require 'rubygems'
require 'sinatra'
require 'ruby-debug'
require 'uri'
require 'active_support/all'

require 'board'

# http://localhost:4567/board?nome%20do%20board=%3Cbacklog[billing]%3E%3Cprocessing[feature%201][feature%202]%3E%3Cdone[deploy%20infrastructure]%3E
get '/board' do
  unless request.query_string.empty?
    board_title, content = parse_url(request.query_string)
    board = Board.new(board_title, content)

    content_type 'text/plain', :charset => 'utf-8'
    board.to_yaml
  else
    'Vazio'
  end
end

def parse_url(query)
  unescaped_query = URI.unescape(query)
  unescaped_query.scan(/^(.+)=(.+)$/).flatten
end
