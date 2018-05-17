class CoursesController < InheritedResources::Base
  before_action :authenticate_user!

  def new
    @course=Course.new
    authorize! :create, @course
  end

  def create
    @course = Course.new(course_params)
    @course.user = current_user
    if @course.save
      redirect_to @course
    else
      render 'new'
    end
  end

  def edit
    @course = Course.find(params[:id])
    authorize! :update, @course
  end 
  
  def destory
    authorize! :destory, @course
  end  
  
  private

    def course_params
      params.require(:course).permit(:title)
    end

    

end

