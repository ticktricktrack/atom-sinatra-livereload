require "sinatra/base"
require "haml"
require "sass"
require 'sinatra/assetpack'

class App < Sinatra::Base
    set :root, File.dirname(__FILE__) # You must set app root
    register Sinatra::AssetPack

    assets {
      serve '/js',     from: 'app/js'        # Default
      serve '/css',    from: 'app/css'       # Default
      serve '/images', from: 'app/images'    # Default
    }

    get '/' do
      haml :dashboard
    end
end
