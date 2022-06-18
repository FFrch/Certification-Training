class Adoption < ApplicationRecord
  belongs_to :user
  belongs_to :tree
  belongs_to :review, dependent: :destroy

  validates :starts_at, presence: true
  validates :ends_at, presence: true
end
