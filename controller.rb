require 'sinatra'
require 'sinatra/contrib/all'
require 'json'

require_relative './models/game'


  get '/rps/:hand_1/:hand_2' do
    hand_1 = params[:hand_1]
    hand_2 = params[:hand_2]
    game = Game.new(hand_1, hand_2)
    @outcome = game.compare()
    erb  (:result)
  end
