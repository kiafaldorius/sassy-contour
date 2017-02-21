ENV['RACK_ENV'] = 'test'
require 'minitest/autorun'
require 'rack/test'

require_relative '../sassy-contour'

include Rack::Test::Methods

def app
  Sinatra::Application
end

