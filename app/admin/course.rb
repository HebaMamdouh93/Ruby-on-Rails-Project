ActiveAdmin.register Course do
    permit_params :title , :user_id 
  
    index do
        selectable_column
        id_column
        column :title 
        column "User" do |m|
            usr = User.find(m.user_id)
            
        end 
        column :created_at
        actions
    end

     
      show do |user|
        attributes_table do
            row :title
            row "User" do |m|
                usr = User.find(m.user_id)
                
            end 
            
      
        end
      end

      form do |f|
        tabs do
          tab 'Basic' do
              f.inputs 'Basic Details' do
              f.input :title
              f.input :user_id, :as => :select, :collection => User.where(instructor: 1 )
             
            end
          end 
        end
        f.actions
      end
end