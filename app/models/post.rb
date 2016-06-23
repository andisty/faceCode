class Post < ActiveRecord::Base
  belongs_to :user
  has_many :likes

  def self.search(query)
    where("posts.content LIKE ?",
      "%#{query}%")
  end

end
