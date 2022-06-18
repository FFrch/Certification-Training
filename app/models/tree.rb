class Tree < ApplicationRecord
  belongs_to :user
  has_many :adoptions, dependent: :destroy

  validates :name, presence: true
  validates :address, presence: true
  validates :fruits, presence: true, inclusion: { in: %w[Apple Apricot Cherry Chestnut Coconut tree Fig Grapefruit Hazel Mandarin Mango Mirabellier Mulberry Olivier Orange Pear Plum”]}
  validates :description, presence: true, length: { in: 20..280 }
  validates :quantity_by_year, presence: true, length: { minimum: 1 }
  validates :price_per_year, length: { minimum: 1 }
end
