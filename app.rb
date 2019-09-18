require 'sinatra/base'

class App < Sinatra::Base
    get '/newteam' do
        
        erb :newteam
    end

    post '/newteam' do 
        @team_name = params["name"]
        @coach = params["coach"]
        @point_guard = params["pg"]
        @shooting_guard = params["sg"]
        @small_fwd = params["sf"]
        @power_fwd = params["pf"]
        @center = params["c"]
        erb :team
        #a post request coming from the `/newteam` URL should serve up the newly created team erb file in `/team`
    end

end
