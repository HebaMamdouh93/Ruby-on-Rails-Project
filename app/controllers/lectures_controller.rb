class LecturesController < InheritedResources::Base
  before_action :authenticate_user!
 
  def new
    @lecture = Lecture.new
    authorize! :create, @lecture
  end

  def create
    @user_id= lecture_params['user_id']
    if( @user_id.to_i == current_user.id )
      @lecture = Lecture.create(lecture_params)
     
      respond_to do |format|
        if @lecture.save
          format.html { redirect_to lectures_url, notice: 'Lecture created successfully ' }
        else
          format.html { redirect_to lectures_url, notice: 'You cannot create lecture' }
        end
       end     
    else
        respond_to do |format|
          format.html { redirect_to lectures_url, notice: 'You cannot create lecture' }
        end
    end
  end
  
  def edit
    @lecture = Lecture.find(params[:id])
    authorize! :edit, @lecture
  end

  def destory
    authorize! :destory, @lecture
  end
  def download_file
    @lecture = Lecture.find(params[:id])
    send_file(@lecture.attachment.path,
          :disposition => 'attachment')
  end

  def like_or_unlike
    @lecture = Lecture.find(params[:id])
    if (!current_user.voted_for? @lecture)
      @lecture.liked_by current_user
      redirect_to @lecture
    else
      @lecture.unliked_by current_user
      redirect_to @lecture
    end  
  end
  
  def spam_lec
    @lecture = Lecture.find(params[:id])
   
    unless @lecture.users.where(id: current_user.id).first
      @lecture.users << current_user 
    end

    respond_to do |format|
      if @lecture.save
        format.html { redirect_to lectures_url, notice: 'You flag lecture as a spam ' }
      else
        
      end
    end
    
  end
  
  private
   
    def lecture_params
      params.require(:lecture).permit(:content, :attachment, :user_id, :course_id)
    end


end

