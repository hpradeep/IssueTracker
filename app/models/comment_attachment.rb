class CommentAttachment < ActiveRecord::Base
	has_attached_file :attachment
	 validates_attachment_content_type :attachment, content_type: /\Aimage\/.*\Z/
	belongs_to :comment
end
