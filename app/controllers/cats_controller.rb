class CatsController < ApplicationController
  def index
    @cats = Cat.all
  end

  def new
    @cat = Cat.new
  end

  # POST /cats
  # params
  def create
    @cat = Cat.create(cat_params)

    redirect_to cats_path, notice: 'Cat saved successfully'
  end

  def show
  end

  # DELETE /cats/:id
  def destroy
    @cat = Cat.find(params[:id])
    @cat.destroy

    redirect_to cats_path, notice: 'Cat was removed from the missing cats!'
  end

  private

  def cat_params
    params.require(:cat).permit(:legs, :color, :location, :image_url, :gender)
  end
end
