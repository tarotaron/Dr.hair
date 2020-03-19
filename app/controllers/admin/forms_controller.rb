class Admin::FormsController < ApplicationController
	def index
		@forms = Form.all
		@form = Form.new
	end

	def create
		@form = Form.new(form_params)
	    @form.save
	    flash[:notice] = "You have creatad form."
	    redirect_to  admin_forms_path(@form)
	end

	def destroy
		form = Form.find(params[:id])
		form.destroy
		redirect_to  admin_forms_path
	end

private
 def form_params
 	params.require(:form).permit(:form_name, :form_image, :form_body)
 end
end
