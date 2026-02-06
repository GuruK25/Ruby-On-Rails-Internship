class Book < ApplicationRecord
  belongs_to :author


  def get_author
    @authors = @book.author
  end
end
