class FiguresController < ApplicationController

  get '/figures' do
    erb :'figures/index'
  end

  # get '/figures/new'

end
