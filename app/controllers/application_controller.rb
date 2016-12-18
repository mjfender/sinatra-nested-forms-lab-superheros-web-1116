require 'sinatra/base'
require './config/environment'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :index      
    end

    post '/teams' do
      @team = Team.new(params["team"])
      params["team"]["members"].collect do |member|
        new_hero = Hero.new(member)
        new_hero.team = @team
        @team.heroes <<  new_hero
        new_hero
      end
      erb :team
    end

end
