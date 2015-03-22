class MedsController < ApplicationController

	def index
		@meds = Med.all
	end

	def show
		@med = Med.find(params[:id])
	end

	def edit
		@med = Med.find(params[:id])
	end

	def update
		@med = Med.find(params[:id])
		@med.update(med_params)
		redirect_to @med
	end

	def new
		@med = Med.new
	end

	def create
		@med = Med.new(med_params)
		@med.save
		redirect_to @med
	end

	def destroy
		@med = Med.find(params[:id])
		@med.destroy
		redirect_to meds_url
	end


	private

	def med_params
		params.require(:med).permit(:name, :dose, :dose_timing, :ordering_provider, :route, :start_date, :end_date)
	end
end
