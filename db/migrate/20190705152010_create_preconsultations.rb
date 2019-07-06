class CreatePreconsultations < ActiveRecord::Migration[5.2]
  def change
    create_table :preconsultations do |t|
      t.integer :age
      t.string :sex
      t.integer :height
      t.integer :weight
      t.string :goal
      t.references :client, foreign_key: true

      t.timestamps
    end
  end
end
