class ChangeColumnToAllowNull < ActiveRecord::Migration[5.0]
  def up
    change_column :stations, :number, :integer, null: true
  end

  def down
    change_column :stations, :number, :integer, null: false
  end
end
