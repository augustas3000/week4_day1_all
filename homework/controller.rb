require 'sinatra'
require 'sinatra/contrib/all'
require_relative 'models/rock_paper_scissors'
also_reload('models/*')

get '/' do
  erb(:home)
end

get '/:hand1/:hand2' do
  hand1 = params[:hand1]
  hand2 = params[:hand2]
  @game = Rps.compare(hand1, hand2)
  erb(:result)
end
