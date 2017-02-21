require 'haml'
require 'sass'
require 'coffee-script'
require 'sinatra'
require 'bootstrap-sass'

require_relative 'app/helpers/template_helper'
helpers TemplateHelper

# The root path is special. It's not treated as a page because:
# a) it would result in an empty symbol name for the template (works, but weird)
# b) the file path would be views/pages/.haml (treated as hidden file in *nix)
# c) unlike other pages, it should always exist
# 
# It is possible to treat it like the other pages if the notes mentioned above
# are acceptable. However, it's cleaner this way.
get '/' do
  haml :index
end

# This is also available under sprockets
get '/css/*.css' do |path|
  content_type :css
  
  if template = template_from_path('styles', path, '.sass')
    sass template, :style => :expanded
  elsif template = template_from_path('styles', path, '.scss')
    scss template, :style => :expanded
  else
    pass
  end
end

# This is also available under sprockets
get '/js/*.js' do |path|
  content_type :js
  
  if template = template_from_path('scripts', path, '.coffee')
    coffee template
  else
    pass
  end
end

get '/*' do |path|
  if template = template_from_path('pages', path, '.haml')
    haml template
  else
    pass
  end
end


