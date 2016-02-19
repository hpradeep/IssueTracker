class Issue < ActiveRecord::Base
	has_many :comments
	belongs_to :user
	has_many :issueattachments

end
