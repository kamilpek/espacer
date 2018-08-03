class AddThumbToPlaces < ActiveRecord::Migration[5.2]
  def change
    add_column :places, :thumb, :string
  end
end
