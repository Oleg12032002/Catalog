ActiveAdmin.register MusicProduct do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :name, :perfomet, :autor, :album, :prise, :image, images: []
  
  form do |f|
    f.inputs do
      f.input :name
      f.input :perfomet
      f.input :autor
      f.input :album, as: :text
      f.input :prise
      f.input :image, as: :file
      f.input :images, as: :file, input_html: {multiple: true}

    end
    f.actions
  end


show do
  attributes_table do
    row :name
    row :perfomet
    row :autor
    row :album
    row :prise
    row :image do |object|
      image_tag object.image
    end

    row :images do |object|
      ul do
        object.images.each do |image|
          span image_tag image
        end
      end
    end

  end
  active_admin_comments
end



  #
  # or
  #
  # permit_params do
  #   permitted = [:name, :perfomet, :autor, :album, :prise]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
end
