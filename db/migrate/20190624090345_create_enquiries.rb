class CreateEnquiries < ActiveRecord::Migration[5.2]
  def change
    create_table :enquiries do |t|
      t.string :first_name
      t.string :last_name
      t.string :phone
      t.string :email
      t.string :country
      t.text :reason

      t.timestamps
    end
  end
end
