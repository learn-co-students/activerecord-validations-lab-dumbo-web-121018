require 'pry'

class Post < ActiveRecord::Base

  # CLICKBAIT = [
  #   /Won\'t Believe/,
  #   /Secret/,
  #   /Top [0-9]/,
  #   /Guess/
  # ]
  #
  # def clickbait?
  #   CLICKBAIT.select do |clickbait|
  #     if title != nil
  #       title.index(clickbait) != nil
  #       # binding.pry
  #     end
  #   end
  # end

  validates :content, length: { minimum: 250 }
  validates :summary, length: { maximum: 250}
  validates :category, inclusion: { in: %w(Fiction Non-fiction), message: "%{value} is not a valid category"}
  # validates :title, presence: true, if: :clickbait?
  validates :title, format: { with: /Won\'t Believe|Secret|Top [0-9]|Guess/, message: "must be click bait" }
end
