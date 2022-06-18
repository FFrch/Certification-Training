class AddReferenceToAdoptions < ActiveRecord::Migration[6.1]
  def change
    add_reference :adoptions, :user
    add_reference :adoptions, :tree
  end
end
