class Admin::LengthsController < ApplicationController
  def index
    @lengths = Length.all
    @length = Length.new
  end

  def create
    @length = Length.new(length_params)
    if @length.save
      flash[:notice] = "creatad length."
      redirect_to admin_lengths_path
    else
      @lengths = Length.all
      render admin_lengths_path
    end
  end

  def destroy
    length = Length.find(params[:id])
    length.destroy
    redirect_to admin_lengths_path
  end

  private

  def length_params
    params.require(:length).permit(:length_name, :length_image)
  end
end
