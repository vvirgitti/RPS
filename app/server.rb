require 'sinatra/base'
require './lib/player'

class RPS < Sinatra::Base

  set :views, Proc.new {File.join(root, "..", "views")}

  get '/' do
    erb :index
  end

  get '/register' do
    erb :register
  end

  post '/register' do
    if params[:name].empty?
      @message = "Please enter your name"
      puts "*********"
      puts params.inspect
      erb :register
    else
      player = Player.new(params[:name])
      @welcome = "Welcome #{params[:name]}"
      erb :choose
    end
  end

  get '/choose' do
    erb :choose
  end

  get '/rock' do
    erb :rock
  end

  get '/paper' do
    erb :paper
  end

  get '/scissors' do
    erb :scissors
  end

  get '/opponent' do
    @weapon = %w(Rock Paper Scissors).sample
    erb :opponent
  end

  get '/result' do
    erb :result
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
