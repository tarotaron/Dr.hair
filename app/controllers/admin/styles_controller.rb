class Admin::StylesController < ApplicationController

	def index
		@styles = Style.all
		@style = Style.new
	end

	def create
		@style = Style.new(style_params)
		# binding.pry
		if @style.save
		flash[:notice] = "created style."
		redirect_to admin_styles_path
	    else
		@styles = Style.all
	    render admin_styles_path
	    end
	end

	def destroy
		style = Style.find(params[:id])
		style.destroy
		redirect_to admin_styles_path
	end
end

private
def style_params
	params.require(:style).permit(:style_image, :style_body, :style_name, :length_id, :form_id)
end
