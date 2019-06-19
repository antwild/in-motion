class ChangeConsultationsToPreconsultations < ActiveRecord::Migration[5.2]
  def change
      rename_table :consultations, :preconsultations
  end
end
