class PagesController < ApplicationController
  def index
  	@music_products = MusicProduct.limit(4)
  end
end
