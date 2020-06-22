class Book < ApplicationRecord
  def self.search(keyword)
    return Book.all unless keyword
    Book.where('title LIKE(?) OR author LIKE(?)', "%#{keyword}%", "%#{keyword}%")
  end
end
