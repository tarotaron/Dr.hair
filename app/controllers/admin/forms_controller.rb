class Admin::FormsController < ApplicationController
	def index
		@forms = Form.all
		@form = Form.new
	end

	def create
		@form = Form.new(form_params)
	    if @form.save
	    flash[:notice] = "creatad form."
	    redirect_to admin_forms_path
	    else
	    @forms = Form.all
	    render admin_forms_path
		end
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
