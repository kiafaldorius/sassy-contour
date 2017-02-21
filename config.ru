
require_relative 'app/helpers/sprockets_helper'
require_relative 'sassy-contour'

map '/assets' do
  run SprocketsHelper.app
end

map '/' do
  run Sinatra::Application
end

