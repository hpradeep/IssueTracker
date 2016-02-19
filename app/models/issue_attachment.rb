class IssueAttachment < ActiveRecord::Base
	has_attached_file :attachment
	 validates_attachment_content_type :attachment, content_type: /\Aimage\/.*\Z/
	belongs_to :issue
end
