require './environment'

module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here
    get '/' do
      erb :root
    end

    get '/new' do
      erb :'pirates/new'
    end

    post '/pirates' do
      @pirate = Pirate.new params[:pirate]

      params[:pirate][:ships].each do |ship|
        Ship.new ship
      end

      @ship1 = Ship.all.first
      @ship2 = Ship.all[1]

      erb :'pirates/show'
    end
  end
end