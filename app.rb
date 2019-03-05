require './environment'

module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here

    post '/' do
      @pirate = Pirate.new(params[:pirate])
    end

  end
end
