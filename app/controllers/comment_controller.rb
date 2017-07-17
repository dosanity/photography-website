class CommentController < ApplicationController
 
  def create
    @comment = current_user.comments.build(comment_params)
  end
  
  def destroy
      @blog = Blog.friendly.find(params[:blog_id])
      @comment = @blog.comments.find(params[:id])
    if @comment.user_id == current_user.id
      @comment.destroy 
      redirect_to blog_path(@blog), :notice => 'Comment Deleted' 
    else
      redirect_to blog_path(@blog), :notice => "Cannot Delete Comment"
    end
  end
  
  private

  def comment_params
    params.require(:comment).permit(:content)
  end
end
