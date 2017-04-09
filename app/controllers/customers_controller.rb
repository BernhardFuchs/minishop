class CustomerController < ApplicationController
	def index
		@customers = Customer.all
	end

	def show
		@customer = Customer.find(params[:id])
	end

	def new
		@customer = Customer.new
	end

	def edit
		@customer = Customer.find(params[:id])
	end

	def create
		@customer = Customer.new(customer_whitelist)

		if @customer.save
			redirect_to @customer
		else
			render 'new'
		end
	end

	def update
		@customer = Customer.find(params[:id])

		if @customer.update(customer_whitelist)
			redirect_to @customer
		else
			render 'edit'
		end
	end

	def destroy
		@customer = Customer.find(params[:id])
		@customer.destroy

		redirect_to customers_path
	end

	private
		def customer_whitelist
			params.require(:customer).permit(:name, :street, :zipcode, :city, :email, :banknumber, :accountnumer)
		end
end
