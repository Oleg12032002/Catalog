class MusicProductsController < ApplicationController

	def index
		@music_products = MusicProduct.all
	end

	def show
		@music_product = MusicProduct.find(params[:id])
	end


	def search
		@search = params[:search]
		@music_products = MusicProduct.where("name LIKE '%#{params[:search]}%'")
	end


end
