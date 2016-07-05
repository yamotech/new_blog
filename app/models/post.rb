class Post < ActiveRecord::Base
  belongs_to :category

  scope :find_newest_article, -> { order(created_at: :desc).limit(5) }

  validates :title,        presence: :true, length: { maximum: 50 }
  validates :category_id,  presence: :true
  validates :body,         presence: :true, length: { maximum: 1000 }
end
