class Api::ProtocolsController < Api::ApiController

	def index
		render json: Protocol.all
	end

	def show
		list = Protocol.find(params[:id])
		render json: list
	end

	def create
		list = Protocol.new(list_params)
		if list.save
			head 200
		else
			head 500
		end
	end

	private
	def list_params
		params.require("protocol").permit("amc")
	end
end