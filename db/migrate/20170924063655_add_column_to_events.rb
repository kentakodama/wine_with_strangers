class AddColumnToEvents < ActiveRecord::Migration[5.1]
  def change
    add_column :events, :location_id, :integer
  end
end
