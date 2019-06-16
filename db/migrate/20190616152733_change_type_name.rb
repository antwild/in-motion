class ChangeTypeName < ActiveRecord::Migration[5.2]
  def change
    remove_column :services, :type
    add_column :services, :service_type, :string
  end
end
