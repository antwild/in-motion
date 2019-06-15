class CreateConsultations < ActiveRecord::Migration[5.2]
  def change
    create_table :consultations do |t|
      t.date :date
      t.references :users, foreign_key: true
      t.references :services, foreign_key: true

      t.timestamps
    end
  end
end
