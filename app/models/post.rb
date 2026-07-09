class Post < ApplicationRecord
  belongs_to :user
  belongs_to :kanji
  has_one_attached :image
  has_many :comments, dependent: :destroy
  validates :caption, length: { maximum: 500 }
end
