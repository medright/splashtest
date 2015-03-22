class PatientsController < ApplicationController
	def index
		@patient = Patient.all	
	end

	def show
		@patient = Patient.find(params[:id])
	end

	def edit
		@patient = Patient.find(params[:id])
	end

	def update
		@patient = Patient.find(params[:id])
		@patient.update(list_params)
		redirect_to @patient
	end

	def create
		@patient = Patient.new(list_params)
		@patient.save
	end

	def destroy
		@patient = Patient.find(params[:id])
		@patient.destroy
		redirect_to patients_url
	end

	def new
		@patient = Patient.new
	end

	private
	def list_params
		params.require(:patient).permit(:first_name, :last_name, :dob, :allergies,
			:code, :notes, :orders, :cbcNa, :cbcCl, :cbcBUN, :cbc, :cmpHco3,
			:cmpCr, :cbcWbc, :hbg, :htc, :plt, :glucose, :bpSys, :bpDia, :o2, :pulse,
			:resp, :temp)
	end
end
