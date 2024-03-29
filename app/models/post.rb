class Post < ActiveRecord::Base
	belongs_to :user

  	validates :user_id, presence: true
  	validates :content, presence: true, length: { maximum: 140 }
  	validates :link, presence: true
end
