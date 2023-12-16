class FlatsController < ApplicationController

  def index
    @flat = Flat.all
  end

  def new
    @flat = Flat.new
  end

  def create
    @flat= Flat.new(flat_params)
    if @flat.save
      redirect to_ flats_path
    if
      render :new, status status: :unprocessable_entity

    else

    end
  end

  def destroy
    @flat = Flat.find(flat_params)
   if @flat.destroy
   else
    status: :see_other

  end

  def update
    if @flat.update(flat_params)
      redirect_to flat_path(@flat)
    else
      render :new, status: :unprocessable_entity
    end
end
