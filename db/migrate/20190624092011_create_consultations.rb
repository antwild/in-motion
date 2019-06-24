class CreateConsultations < ActiveRecord::Migration[5.2]
  def change
    create_table :consultations do |t|
      t.text :important
      t.text :notes
      t.text :strategy
      t.references :client, foreign_key: true

      t.timestamps
    end
  end
end
