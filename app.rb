require './environment'

module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here

    post '/' do
      @pirate = Pirate.new(params[:pirate])

      params[:pirate][:ships].each do |details|
        Ship.new(details)
      end

      @ships = Ship.all
    end

    erb :show

  end
end
