ActiveAdmin.register Product do
  permit_params :name, :description, :price, :special_price, :special_date, 
                :available, :category_id

  config.sort_order = 'category_id_asc'
  config.paginate   = false
  
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # permit_params :list, :of, :attributes, :on, :model
  #
  # or
  #
  # permit_params do
  #   permitted = [:permitted, :attributes]
  #   permitted << :other if resource.something?
  #   permitted
  # end

  # THIS SHOULD SHOW ALL DETAILS AND FRONT-END PREVIEW
  # show do
    # h3 product.name
  # end
  index do
    sortable_handle_column
    column "Category" do |e|
      e.category.id
    end
    column :name
    column :description #truncate
    column :price
    actions
  end


  form do |f|
    f.inputs do
      f.input :category do
        input :category_id, as: :select, collection: Category.all.map{ |c| c.name }
      end
      f.input :name
      f.input :description
      f.input :price
      f.input :special_price
      f.input :special_date, as: :select, collection: Date::DAYNAMES
    end
    f.actions
  end

end
