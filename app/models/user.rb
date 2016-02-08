class User < ActiveRecord::Base 
	 has_attached_file :avatar, styles: { medium: "100x100>", thumb: "100x100>" }
  validates_attachment_content_type :avatar, content_type:  /^image\/(png|gif|jpeg|jpg)/
  validates_attachment_presence :avatar
 has_many :issues
 has_many :comments
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
