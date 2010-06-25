require File.join(File.dirname(__FILE__), 'spec_helper')

describe "Kanban" do
  include Rack::Test::Methods

  def app
    @app ||= Sinatra::Application
  end

  it "should respond to /hi" do
    get '/hi'
    last_response.should be_ok
  end

  it 'should respond to /board' do
    get '/board'
    last_response.should be_ok
    last_request.params.should be_empty
  end

  it 'should receive some params' do
    get '/board?[board%20name],test=1'
    last_request.params.should_not be_empty
  end
end
