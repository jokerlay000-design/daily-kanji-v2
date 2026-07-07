class Post < ApplicationRecord
  belongs_to :user
  belongs_to :kanji
  validates :caption, length: { maximum: 500 }
end
