class StoresController < ApplicationController

	def index
		@postal_code = params[:postal_code]
		@stores = Lcbo.get_stores(@postal_code.gsub(" ", ""))
	end

end
