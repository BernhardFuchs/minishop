class CartController < ApplicationController
	
	def show
		@cart = Cart.find(params[:id])
	end

	def update
		@cart = current_cart

		if @cart.update(cart_whitelist)
			redirect_to show_cart_path
		else
			render 'shop#index'
		end
	end

	private
		def current_cart
			if @cart.nil?
				@cart = Cart.new
				@cart.save
			end
		end

		def cart_whitelist
			params.require(:cart).permit(:product)
		end
end
