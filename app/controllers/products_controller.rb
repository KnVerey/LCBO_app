class ProductsController < ApplicationController

	def index
		@store_id = params[:store_id]
		@products = Lcbo.get_sale_products(@store_id)
	end

end

