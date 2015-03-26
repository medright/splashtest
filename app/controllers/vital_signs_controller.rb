class VitalSignsController < ApplicationController
	def index
		@vital_sign = VitalSign.all
	end

	def show
		@vital_sign = VitalSign.find(params[:id])
	end

	def edit
		@vital_sign = VitalSign.find(params[:id])
	end

	def update
		@vital_sign = VitalSign.find(params[:id])
		@vital_sign.update(vital_sign_params)
		redirect_to @vital_sign
	end

	def new
		@vital_sign = VitalSign.new
	end

	def create
		@vital_sign = VitalSign.new(vital_sign_params)
		@vital_sign.save
		redirect_to @vital_sign
	end

	def destroy
		@vital_sign = VitalSign.find(params[:id])
		@vital_sign.destroy
		redirect_to vital_signs_url
	end


	private

	def vital_sign_params
		params.require(:vital_sign).permit(:name, :dose, :dose_timing, :ordering_provider, :route, :start_date, :end_date)
	end
end
