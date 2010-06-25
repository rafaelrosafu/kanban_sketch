require File.join(File.dirname(__FILE__), '..', 'kanban.rb')
require File.join(File.dirname(__FILE__), '..', 'board.rb')
require File.join(File.dirname(__FILE__), '..', 'column.rb')
require File.join(File.dirname(__FILE__), '..', 'card.rb')

require 'rubygems'
require 'sinatra'
require 'rack/test'
require 'rspec'
require 'rspec/autorun'
require 'ruby-debug'

# set test environment
set :environment, :test
set :run, false
set :raise_errors, true
set :logging, false
