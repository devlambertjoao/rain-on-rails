class CreateRainMeasures < ActiveRecord::Migration[6.0]
  def change
    create_table :rain_measures do |t|
      t.integer :value
      t.date :date
      t.belongs_to :place, null: false, foreign_key: true

      t.timestamps
    end
  end
end
