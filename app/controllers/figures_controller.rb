class FiguresController < ApplicationController

  get '/figures' do
    @figures = Figure.all
    erb :'figures/index'
  end

  get '/figures/new' do
    @titles = Title.all
    erb :'figures/new'
  end

  get '/figures/:id' do
    @figure = Figure.find(params[:id])
    erb :'figures/show'
  end

  post '/figures' do
    @figure = Figure.create(params[:figure])
    params[:title][:id].each do |id|
      the_title = Title.find_by(id: id)
      @figure.titles << the_title
    end
    redirect to "/figures/#{@figure.id}"
  end

end
