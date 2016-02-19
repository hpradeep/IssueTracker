class CommentsController < ApplicationController
	before_action :find_issue
  before_action :set_comment, only: [:create]
  def index
  	@comments = @issue.comments.order(created_at: :desc)
  	render :json => @comments.to_json(:include => [:user => {:methods => [:avatar_url]}])

  end

  def new
  	@comment = @issue.comments.build
   @comment_attachment= @comment.comment_attachments.build
    render partial: "/comments/comment"

  end
  def create
   @comment = @issue.comments.create(comment_params)
   render :json => @comment.to_json(:include => [:user])
  end
  def edit
  end
  def destroy
  end
  private
  def find_issue
  	@issue = Issue.find(params[:issue_id])
  end
  def set_comment
    params[:comment][:user_id] = current_user.id
  end
  def comment_params
  	params.require(:comment).permit(:comment,:user_id,comment_attachments_attributes: [:attachment])
  end
end
