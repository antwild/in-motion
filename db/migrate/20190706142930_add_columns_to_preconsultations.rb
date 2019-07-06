class AddColumnsToPreconsultations < ActiveRecord::Migration[5.2]
  def change
    add_column :preconsultations, :about, :text
    add_column :preconsultations, :expand, :text
    add_column :preconsultations, :meals_per_day, :integer
    add_column :preconsultations, :similar_meals, :string
    add_column :preconsultations, :breakfast, :string
    add_column :preconsultations, :snack_one, :string
    add_column :preconsultations, :lunch, :string
    add_column :preconsultations, :snack_two, :string
    add_column :preconsultations, :dinner, :string
    add_column :preconsultations, :snack_three, :string
    add_column :preconsultations, :eating_to_achieve, :string
    add_column :preconsultations, :supplements, :string
    add_column :preconsultations, :supp_detail, :text
    add_column :preconsultations, :supplements_year, :text
    add_column :preconsultations, :support, :text
    add_column :preconsultations, :budget, :string
    add_column :preconsultations, :diet, :text
    add_column :preconsultations, :three_months, :string
    add_column :preconsultations, :six_months, :string
    add_column :preconsultations, :twelve_months, :string
    add_column :preconsultations, :training, :text
    add_column :preconsultations, :female, :text
    add_column :preconsultations, :previous, :text
    add_column :preconsultations, :bathroom, :boolean
    add_column :preconsultations, :kitchen, :boolean
    add_column :preconsultations, :based, :string
    add_column :preconsultations, :remote, :boolean
    add_column :preconsultations, :found, :string
    add_column :preconsultations, :phrase, :string
    add_column :preconsultations, :testimonial, :boolean
  end
end
