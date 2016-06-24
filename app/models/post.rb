class Post < ActiveRecord::Base
  belongs_to :user
  has_many :likes

  def self.search(query)
    where("posts.content LIKE ?",
      "%#{query}%")
  end

end
def self.search(search)
  where("name LIKE ?", "%#{search}%")
  where("content LIKE ?", "%#{search}%")
end
