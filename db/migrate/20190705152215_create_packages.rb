class CreatePackages < ActiveRecord::Migration[5.2]
  def change
    create_table :packages do |t|
      t.references :consultation, foreign_key: true
      t.integer :number_sessions
      t.integer :price_tier
      t.integer :price

      t.timestamps
    end
  end
end
