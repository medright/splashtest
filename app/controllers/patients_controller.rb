class PatientsController < ApplicationController
	def index
		Patient.find(params[:id])	
	end

	def show
		Patient.find(params[:id])
	end

	def edit
		@patient = Patient.find(params[:id])
	end

	def create
		@patient = Patient.new(list_params)
		if @patient.save
			head 200
		else
			head 500
		end
	end

	def new
		@patient = Patient.new
	end

	private
	def list_params
		params.require(:patient).permit(:first_name, :last_name, :dob, :allergies,
			:code, :notes, :orders, :cbcNa, :cbcCl, :cbcBUN, :cbcK, :cmpHco3,
			:cmpCr, :cbcWbc, :hgb, :htc, :plt, :glucose, :bpSys, :bpDia, :o2, :pulse,
			:resp, :temp)
	end
end
