class CreateExperiences < ActiveRecord::Migration[5.2]
  def change
    create_table :experiences do |t|
      t.string :name
      t.integer :price
      t.integer :participants_number_max
      t.string :photo
      t.string :description
      t.timestamps
    end
  end
end
