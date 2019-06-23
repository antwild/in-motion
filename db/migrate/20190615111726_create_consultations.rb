class CreateConsultations < ActiveRecord::Migration[5.2]
  def change
    create_table :consultations do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :phone
      t.integer :age
      t.string :sex
      t.integer :height
      t.integer :weight
      t.string :goal
      t.integer :number_timeframe
      t.string :period_timeframe
      t.date :date
      t.time :time

      t.timestamps
    end
  end
end
