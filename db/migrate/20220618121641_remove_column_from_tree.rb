class RemoveColumnFromTree < ActiveRecord::Migration[6.1]
  def change
    remove_column :trees, :string, :string
  end
end
