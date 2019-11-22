class ChangeColumnToStation < ActiveRecord::Migration[5.0]
  def up
    change_column_default :stations, :name, nil
    change_column_default :stations, :route, nil
    change_column_default :stations, :walking_minutes, nil
    change_column_default :stations, :number, nil
  end

  def down
    change_column :stations, :name, :string, null: false, default: '-'
    change_column :stations, :route, :string, null: false, default: '-'
    change_column :stations, :walking_minutes, :integer, null: false, default: 0
    change_column :stations, :number, :integer, null: false, default: 0
  end
end
