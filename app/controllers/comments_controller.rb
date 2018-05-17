class CommentsController < ApplicationController
    before_action :set_lecture
    def create
        #@lecture = Lecture.find(params[:lecture_id])
        @comment = @lecture.comments.create(comment_params)
        @comment.user_id = current_user.id #or whatever is you session name
        if @comment.save
          redirect_to @lecture
        else
          flash.now[:danger] = "error"
        end
      end
 
    private

    def set_lecture
        @lecture = Lecture.find(params[:lecture_id])
    end

    def comment_params
         params.require(:comment).permit(:lecture_id, :content)
    end
end
