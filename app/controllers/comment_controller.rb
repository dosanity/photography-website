class CommentController < ApplicationController
  before_action :find_blog

  def create
    @comment = @blog.comments.new(comment_params)
    @comment.user_id = current_user.id
    @comment.save
    if @comment.save
      redirect_to blog_path(@blog), :notice => 'Comment Posted'
    else
      redirect_to :back
    end
  end

  
  def destroy
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
  
  def find_blog
    @blog = Blog.friendly.find(params[:blog_id])
  end
end
