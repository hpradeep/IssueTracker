class IssuesController < ApplicationController
	before_action :authenticate_user!
	before_action :set_issues,only: [:edit,:destroy]
  def index
  
    @user = User.find_by(user_name:"hpradeep")
  	@issues = Issue.all
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
  def issue_params
  	params.require(:issue).permit(:title,:description)
  end
end
