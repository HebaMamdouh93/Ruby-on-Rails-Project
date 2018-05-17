ActiveAdmin.register Lecture do
    permit_params :content , :attachment , :user8_id
    index do
        selectable_column
        id_column
        column :content
        column :attachment
        column :user_id
        column :created_at
        actions
      end

      
      show do |user|
        attributes_table do
            row:content
            row :attachment
            row :user_id
            
      
        end
      end
end