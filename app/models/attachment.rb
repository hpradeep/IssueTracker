class Attachment < ActiveRecord::Base
	has_attached_file :attachment
	validates_attachment :attachment,
  content_type: { content_type: ["image/jpeg", "image/gif", "image/png"] }
   belongs_to :attachable,polymorphic: true	
end
