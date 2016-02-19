class Comment < ActiveRecord::Base
	belongs_to :issue
	belongs_to :user
	has_many :comment_attachments
	accepts_nested_attributes_for :comment_attachments
	
end
