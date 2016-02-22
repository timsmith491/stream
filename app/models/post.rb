class Post < ActiveRecord::Base
	belongs_to :user
	has_many :comments
	acts_as_votable
	has_attached_file :image, styles: { small: "350x250>", medium: "800x550#" }
	validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
end
