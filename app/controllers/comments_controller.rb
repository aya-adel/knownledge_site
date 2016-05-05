class CommentsController < InheritedResources::Base

 #that for the authentication  status 
  before_action :authenticate_user!
  before_action :set_comment, only: [:show, :edit, :update, :destroy]
  
#create the comment by its function 

    def index
   
    redirect_to courses_path
  end
  

  def create
    @lecture = Lecture.find(params[:lecture_id])
    @comment = @lecture.comments.create(comment_params)
    @comment.user_id = current_user.id #or whatever is you session name
    if @comment.save
      redirect_to @lecture
    else
      flash.now[:danger] = "error"
    end
  end
  
  def update
    respond_to do |format|
      if @comment.update(comment_params)
        format.html { redirect_to lecture_path(@comment.lecture_id), notice: 'Comment was successfully updated.' } 
      else
        format.html { render :edit }
        format.json { render json: @comment.errors, status: :unprocessable_entity }
      end
    end
  end
  
  
    def destroy
    @comment.destroy
    respond_to do |format|
      format.html { redirect_to lecture_path(@comment.lecture_id), notice: 'User was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
 
  private
  
  def set_comment
    @comment = Comment.find(params[:id])
  end

  def comment_params
    params.require(:comment).permit(:user_id, :lecture_id, :body)
  end
end

