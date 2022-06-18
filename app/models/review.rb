class Review < ApplicationRecord
  belongs_to :adoption
  belongs_to :user

  validates :rating, presence: true, length: { in: 0..5 }
  validates :description, presence: true, length: { in: 3..114}
end
