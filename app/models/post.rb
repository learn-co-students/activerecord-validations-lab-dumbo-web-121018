class Post < ActiveRecord::Base
  validates :title, presence: true
  validates :content, length: {mimimum: 250}
  validates :summary, length: {maximum: 250}
  # validates :category, inclusion: {in: ['Fiction', 'Non-Fiction'}
end
