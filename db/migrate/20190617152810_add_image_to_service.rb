class AddImageToService < ActiveRecord::Migration[5.2]
  def change
    add_column :services, :image, :string
  end
end
