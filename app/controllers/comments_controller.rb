class CommentsController < ApplicationController
	before_action :find_issue
  def index
  	@comments = @issue.comments
  	render :json => @comments

  end

  def new
  	@comment = @issue.comments.build

  end
  def create
   @comment = @issue.comments.create(comment_params)
   render :json => @comment
  end
  def edit
  end
  def destroy
  end
  private
  def find_issue
  	@issue = Issue.find(params[:issue_id])
  end
  def comment_params
  	params.require(:comment).permit(:comment)
  end
end
