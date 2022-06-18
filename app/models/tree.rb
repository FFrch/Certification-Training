class Tree < ApplicationRecord
  belongs_to :user
  has_many :adoptions, dependent: :destroy

  validates :name, presence: true
  validates :address, presence: true
  validates :fruits, presence: true
  validates :description, presence: true
  validates :quantity_by_year, presence: true
end
