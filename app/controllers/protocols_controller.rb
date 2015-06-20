class ProtocolsController < ApplicationController
	
	before_action :require_signin
	def index
		@protocols = Protocol.all
	end

	def show
		@protocols = Protocol.find(params[:id])
	end

	def new
		@protocols = Protocol.new
	end

	def create
		@protocols = Protocol.new(protocol_params)
		@protocols.save
		redirect_to protocols_url
	end

	def destroy
		@protocols = Protocol.find(params[:id])
		@protocols.destroy
		redirect_to protocols_url
	end


	private

	def protocol_params
		params.require(:protocol).permit(:amc, :id, :created_at)
	end



end
