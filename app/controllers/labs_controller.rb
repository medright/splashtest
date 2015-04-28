class LabsController < ApplicationController
	before_action :require_signin
	def index
		@lab = Lab.all
	end

	def show
		@lab = Lab.find(params[:id])
	end

	def edit
		@lab = Lab.find(params[:id])
	end

	def update
		@lab = Lab.find(params[:id])
		@lab.update(lab_params)
		redirect_to @lab
	end

	def new
		@lab = Lab.new
	end

	def create
		@lab = Lab.new(lab_params)
		@lab.save
		redirect_to @lab
	end

	def destroy
		@lab = Lab.find(params[:id])
		@lab.destroy
		redirect_to labs_url
	end


	private

	def lab_params
		params.require(:lab).permit(:na, :cl, :bun, :k, :hco3, :cr, :wbc, :hgb, :htc, :plt, :glucose)
	end
end
