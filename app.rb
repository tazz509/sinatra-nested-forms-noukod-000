require './environment'

module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here
    get '/' do
      erb :root
    end

    post '/' do
      erb :new
    end

    get '/' do
    erb :show
    end

  end
end
