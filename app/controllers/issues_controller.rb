class IssuesController < ApplicationController
	before_action :set_issues,only: [:edit,:destroy]
  def index
  	@issues = Issue.all
  	@issue = Issue.new
  end

  def new
  	@issue = Issue.new
  end
  def create
  	@issue = Issue.create(issue_params)
  end
  def edit
  end
  def destroy
  	redirect_to "/issues"
  end


  private
  def set_issues
  	@issue=Issue.find(params[:id])
  end
  def issue_params
  	params.require(:issue).permit(:title)
  end
end
