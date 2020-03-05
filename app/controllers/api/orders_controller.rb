class Api::OrdersController < ApplicationController
	def create
		order = Order.create
		order.order_items.create(product_id: params[:id])
		render json: {message: 'The product has been added to your order'}
  end
end
