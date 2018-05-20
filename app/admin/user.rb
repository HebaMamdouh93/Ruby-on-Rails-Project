ActiveAdmin.register User do
    permit_params :name , :email , :password , :gender , :dob , :avatar , :instructor
    
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

      form do |f|
        tabs do
          tab 'Basic' do
            f.inputs 'Basic Details' do
              f.input :name 
              f.input :email
              if f.object.new_record?
                f.input :password
                f.input :password_confirmation
            end
              
              f.input :dob
              f.input :gender
              f.input :instructor
              f.input :avatar
            end
          end
    
          
        end
        f.actions
      end

      
end