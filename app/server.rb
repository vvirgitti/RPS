require 'sinatra/base'
require './lib/player'
require './lib/computer'
require './lib/game'

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
      erb :register
    else
      player = Player.new(params[:name])
      @welcome = "Welcome #{params[:name]}"
      erb :choose
    end
  end

  get '/choose' do
    game = Game.new
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
    computer = Computer.new
    @weapon = %w(Rock Paper Scissors).sample
    erb :opponent
  end

  get '/result' do
    if erb == :rock
      @choice = 'Rock'
    elsif erb == :paper
      @choice = 'Paper'
    else
      @choice = 'Scissors'
    end
    erb :result
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
