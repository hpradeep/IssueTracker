class User < ActiveRecord::Base 
	 has_attached_file :avatar, styles: { medium: "100x100>", thumb: "48x48>" }
  validates_attachment_content_type :avatar, content_type:  /^image\/(png|gif|jpeg|jpg)/
  validates_attachment_presence :avatar
 has_many :issues,dependent: :destroy
 has_many :comments,dependent: :destroy
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable


        def avatar_url
    avatar.url(:thumb)
    end
end
