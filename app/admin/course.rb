ActiveAdmin.register Course do
    permit_params :title , :user_id 
    index do
        selectable_column
        id_column
        column :title 
        column :user_id
        column :created_at
        actions
      end

     
      show do |user|
        attributes_table do
            row :title
            row :user_id
            
      
        end
      end
end