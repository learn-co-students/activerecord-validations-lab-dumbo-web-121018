class MyValidator < ActiveModel::Validator
  def validate(post)
    click_baits = ["Won't Believe", 'Secret', 'Guess']
    if post.title.nil? || click_baits.none? { |click_bait| post.title.include?(click_bait) }
      post.errors[:base] << 'Title is not clickable enough.'
    end
  end
end
