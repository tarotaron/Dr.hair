class Admin::FormsController < ApplicationController
	def index
		@forms = Form.all
		@form = Form.new
		respond_to do |format|
		format.html
		format.csv do
        products_csv
		end
		end
	end

	def create
		@form = Form.new(form_params)
	    if @form.save!
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
 def forms_csv
    csv_date = CSV.generate do |csv|
      csv_column_forms = %w(名前 画像 本文)
      csv << csv_column_forms
      @form.each do |form|
        csv_column_values = [
        form.form_name,
		form.form_image_id,
		form.form_body,
        ]
        csv << csv_column_values
      end
    end
    send_data(csv_date,filename: "form.csv")
  end
end
