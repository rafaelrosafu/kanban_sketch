require File.join(File.dirname(__FILE__), 'spec_helper')

describe "Kanban" do
  include Rack::Test::Methods

  def app
    @app ||= Sinatra::Application
  end

  it 'should respond to /board' do
    get '/board'
    last_response.should be_ok
    last_request.params.should be_empty
  end

  it 'should receive some params' do
    get '/board?nome%2520do%2520board%3D%3Cbacklog%5Bbilling%5D%3E%3Cprocessing%5Bfeature%25201%5D%5Bfeature%25202%5D%3E%3Cdone%5Bdeploy%2520infrastructure%5D%3E'
    last_response.should be_ok
  end
end
