class CatsController < ApplicationController
  def index
    @cats = Cat.all

    respond_to do |format|
      format.html
      format.json { render json: @cats }
    end
  end

  def show
    @cat = Cat.find(params[:id])

    respond_to do |format|
      format.html
      format.json { render json: @cat }
    end
  end
end
