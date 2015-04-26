class Post < ActiveRecord::Base
 mount_uploader :photo, PhotoUploader
 belongs_to :creator, foreign_key: 'user_id', class_name: 'User'
 has_many :comments
 has_many :replies
 has_many :post_categories
 has_many :categories, through: :post_categories

 validates :title, presence: true
end