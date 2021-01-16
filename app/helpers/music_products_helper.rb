module MusicProductsHelper

	def music_product_image(image, width:200, height:200)
		image_tag (image.attached? ? image : '/undefined.png'), width: width, height: height, class: 'image'
	end
end
