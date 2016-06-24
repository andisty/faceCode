class Post < ActiveRecord::Base
  belongs_to :user
  has_many :likes
end
def self.search(search)
  where("name LIKE ?", "%#{search}%")
  where("content LIKE ?", "%#{search}%")
end
