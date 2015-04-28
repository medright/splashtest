class OrdersController < ApplicationController
	before_action :require_signin
	
	def index
		@order = Order.all
	end

	def show
		@order = Order.find(params[:id])
	end

	def edit
		@order = Order.find(params[:id])
	end

	def update
		@order = Order.find(params[:id])
		@order.update(order_params)
		redirect_to @order
	end

	def new
		@order = Order.new
	end

	def create
		@order = Order.new(order_params)
		@order.save
		redirect_to @order
	end

	def destroy
		@order = Order.find(params[:id])
		@order.destroy
		redirect_to orders_url
	end


	private

	def order_params
		params.require(:order).permit(:name, :problem, :details, :ordering_provider, :patient)
	end
end
