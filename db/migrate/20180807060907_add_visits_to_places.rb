class AddVisitsToPlaces < ActiveRecord::Migration[5.2]
  def change
    add_column :places, :visits, :integer
  end
end
