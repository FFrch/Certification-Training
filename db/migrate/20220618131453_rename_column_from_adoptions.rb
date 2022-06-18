class RenameColumnFromAdoptions < ActiveRecord::Migration[6.1]
  def change
    rename_column :adoptions, :starts_end, :starts_at
  end
end
