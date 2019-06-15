class AddTimeToConsultation < ActiveRecord::Migration[5.2]
  def change
  add_column :consultations, :time, :time
  end
end
