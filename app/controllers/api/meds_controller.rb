class Api::MedsController < ApplicationController
	def index
		render json:	Med.all
	end
end