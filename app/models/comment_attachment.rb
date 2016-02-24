class CommentAttachment < ActiveRecord::Base
	belongs_to :comment

	has_attached_file :attachment
	 validates_attachment_content_type :attachment, content_type: /\Aimage\/.*\Z/
	end
	
