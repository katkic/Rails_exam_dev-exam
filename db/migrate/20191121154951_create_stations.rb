class CreateStations < ActiveRecord::Migration[5.0]
  def change
    create_table :stations do |t|
      t.string :name, null: false, default: '-'
      t.string :route, null: false, default: '-'
      t.integer :walking_minutes, null: false, default: 0
      t.references :apartment, foreign_key: true

      t.timestamps
    end
  end
end
