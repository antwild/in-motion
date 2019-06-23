class AddContactTypeToPreconsultations < ActiveRecord::Migration[5.2]
  def change
    add_column :preconsultations, :contact_type, :string
  end
end
