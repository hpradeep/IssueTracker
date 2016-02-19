class IssuesController < ApplicationController
	before_action :authenticate_user!
	before_action :set_issues,only: [:edit,:destroy]
	before_action :set_user,only: [:create]
  def index
  
    
  	@issues = Issue.all.order(created_at: :desc)
  	@issue = Issue.new
  	@comments = Comment.all
  end

  def new
  	@issue = Issue.new
  	@comment = Comment.new
  end
  def create
  	
  	@issue = Issue.create(issue_params)
  	render :json => @issue
  end
  def edit
  end
  def destroy
  	if @issue.destroy
  	redirect_to issues_path
  end
  end


  private
  def set_issues
  	@issue=Issue.find(params[:id])
  end
  def set_user
  	params[:issue][:user_id] = current_user.id
  end
  def issue_params
  	params.require(:issue).permit(:title,:description,:user_id)
  end
end
