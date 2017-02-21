require 'sprockets'

module SprocketsHelper
  def self.app
    sprocket = Sprockets::Environment.new
    sprocket.append_path 'views/styles'
    sprocket.append_path 'views/scripts'
    sprocket
  end
end
