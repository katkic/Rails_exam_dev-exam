class AddNumberToStation < ActiveRecord::Migration[5.0]
  def change
    add_column :stations, :number, :integer, null: false, default: 0
  end
end
