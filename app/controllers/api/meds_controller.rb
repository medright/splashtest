class Api::MedsController < ApplicationController
	skip_before_filter :verify_authenticity_token

	def index
		render json:	Med.all
	end

	def show
		list = Med.find(params[:id])
		render json: list
	end

	def create
		list = Med.new(list_params)
		if list.save
			head 200
		else
			head 500
		end
	end

	private
	def list_params
		params.require(:med).permit(:name, :dose, :start_date, :end_date, :route,
		 :consumer_id, :dose_timing)
	end
end