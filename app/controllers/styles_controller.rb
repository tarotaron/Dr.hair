class StylesController < ApplicationController

	def show
		@style =Style.find_by(form_id: params[:form_id],length_id: params[:length_id])
								# ↑ 外部キー        ↑form_tagで指定した名前
		# (params[:id])でfindする際は.find 指定する場合はfind_by
	end

	def index
		@forms = Form.all
		@lengths = Length.all
	end
end
