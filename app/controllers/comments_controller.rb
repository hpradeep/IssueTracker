class CommentsController < ApplicationController
	before_action :find_issue
  def index
  	@comments = @issue.comments

  end

  def new
  	@comment = @issue.comments.build

  end
  def create
   @comment = @issue.comments.create
  end
  def edit
  end
  def destroy
  end
  def find_issue
  	@issue = Issue.find(params[:issue_id])
  end
end
