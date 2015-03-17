class MedsController < ApplicationController

	def index
		@meds = Med.all
	end
end
