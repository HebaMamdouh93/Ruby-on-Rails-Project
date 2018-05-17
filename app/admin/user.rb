ActiveAdmin.register User do
    index do
        selectable_column
        id_column
        column :name
        column :email 
        column :gender
        column :dob 
        column :created_at
        actions
      end

      filter :email 
      filter :created_at
      show do |user|
        attributes_table do
            
            row :name
            row :email 
            row :gender
            row :dob
            row "Image" do |user|
                image_tag user.avatar, class: 'my_image_size'
            end 
            
      
        end
      end
end