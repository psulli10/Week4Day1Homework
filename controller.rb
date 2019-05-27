require('sinatra')
require('sinatra/contrib/all')
require_relative('./models/game.rb')
also_reload('./models/*')

get '/' do
  erb(:home)
end

get '/welcome' do
  erb(:welcome)
end

get '/game/:input1/:input2' do
  # @game_result = "This is where the game will live, yaldy. You're playing with #{params[:input1]} and #{params[:input2].}"
  game_input = Game.new(params[:input1], params[:input2])
  @game_result = game_input.rock_paper_scissors
  erb(:game)
end
