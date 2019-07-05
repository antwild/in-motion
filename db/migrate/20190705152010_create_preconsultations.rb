class CreatePreconsultations < ActiveRecord::Migration[5.2]
  def change
    create_table :preconsultations do |t|
      t.integer :age
      t.string :sex
      t.integer :height
      t.integer :weight
      t.string :goal
      t.integer :number_timeframe
      t.string :period_timeframe
      t.string :contact_type
      t.date :date
      t.time :time
      t.references :client, foreign_key: true

      t.timestamps
    end
  end
end
