class AddCatchCopyToPrototypes < ActiveRecord::Migration[7.0]
  def change
    add_column :prototypes, :catch_copy, :string
  end
end
