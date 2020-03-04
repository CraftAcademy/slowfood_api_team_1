class Api::OrdersController < ApplicationController
	def create
		binding.pry
		order = Order.create
		order.items.create(product_id: params[:id])
		render json: {message: 'The product has been added to your order'}
  end
end
