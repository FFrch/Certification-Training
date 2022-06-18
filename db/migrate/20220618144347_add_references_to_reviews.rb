class AddReferencesToReviews < ActiveRecord::Migration[6.1]
  def change
    add_reference :reviews, :user
    add_reference :reviews, :adoption
  end
end
