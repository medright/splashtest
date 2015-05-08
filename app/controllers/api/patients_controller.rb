class Api::PatientsController < ApplicationController
	skip_before_filter :verify_authenticity_token

	def index
		render json:	Patient.all
	end

	def show
		@patient = Patient.find_by(params[:first_name], params[:last_name])
		render json: @patient
	end

	def create
		list = Patient.new(list_params)
		if list.save
			head 200
		else
			head 500
		end
	end

	private
	def list_params
		params.require(:pateint).permit(:first_name, :last_name, :dob, :allergies, :code,
		 :notes, :orders, :cbcNa, :cbcCl, :cbcBUN, :cbcK, :cmpHco3, :cmpCr, :cbcWbc, :hbg,
		 :htc, :pls, :glucose, :bpSys, :bpDia, :resp, :temp, :o2, :provider_id, :consumer_id)
	end
end