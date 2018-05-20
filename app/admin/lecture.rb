ActiveAdmin.register Lecture do
    permit_params :content , :attachment , :user_id , :course_id
    index do
        selectable_column
        id_column
        column "Content" do |m|
            con = raw(m.content)  
        end 
        column "Attachment" do |m|
            
             link_to "Download", download_file_lecture_path(m)
            
        end 
        column "User" do |m|
            usr = User.find(m.user_id)
            
        end 
        column :created_at
        actions
      end

      
      show do |lecture|
        attributes_table do
            row "Content" do |m|
                con = raw(m.content)  
            end 
            row "Attachment" do |m|
                
                 link_to "Download", download_file_lecture_path(m)
                
            end 
            row "User" do |m|
                usr = User.find(m.user_id)
                
            end
            row "Course" do |m|
                course= Course.find(m.course_id)
                
            end
            
      
        end
      end

      form do |f|
        tabs do
          tab 'Basic' do
            f.inputs 'Basic Details' do
              f.input :content, :as => :ckeditor
              f.input :attachment
              f.input :course_id, :as => :select, :collection => Course.all
              f.input :user_id, :as => :select, :collection => User.where(instructor: 1 )
             
            end
          end
    
          
        end
        f.actions
      end
end