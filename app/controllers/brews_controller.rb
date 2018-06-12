class BrewsController < ApplicationController

  def index
    @brews = Brew.all
  end

  def show
    @brew = Brew.find(params[:id])
  end

  def new
    @brew = Brew.new
  end

  def create
    brew = Brew.create(brew_params)
    redirect_to brew_path(brew)
  end

  def edit
    @brew = Brew.find(params[:id])
  end

  def update
    brew = Brew.find(params[:id])
    brew.update(brew_params)
    redirect_to brew_path(brew)
  end

  def destroy
    brew = Brew.find(params[:id])
    brew.destroy
    redirect_to brews_path
  end

  private
  def brew_params
    params.require(:brew).permit(:blend_name, :origin, :notes, :strength)
  end

end
