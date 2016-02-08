class Comment < ActiveRecord::Base
	belongs_to :issue
	belongs_to :user
	has_many :attachments,as: :attachable
	
end
