class Adoption < ApplicationRecord
  belongs_to :user
  belongs_to :tree
  belongs_to :review, dependent: :destroy
end
