require_relative 'config/environment'
require 'sinatra/base'
require 'sinatra/reloader' if ENV['RACK_ENV'] != 'production'

class App < Sinatra::Base
  configure :development, :test do
    register Sinatra::Reloader if defined?(Sinatra::Reloader)
    also_reload '**/*.rb'
  end

  get '/' do
    erb :index
  end

  get '/new' do
    erb :create_puppy
  end

  post '/' do
    @puppy = Puppy.new(params[:name], params[:breed], params[:age])
    erb :display_puppy
  end
end
