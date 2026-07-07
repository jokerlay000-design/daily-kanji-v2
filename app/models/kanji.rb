class Kanji < ApplicationRecord
   has_many :posts, dependent: :destroy
end
