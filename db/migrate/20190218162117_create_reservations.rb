class CreateReservations < ActiveRecord::Migration[5.2]
  def change
    create_table :reservations do |t|
      t.integer :participants_number
      t.integer :total_price
      t.string :review
      t.integer :rating
      t.date :start_at
      t.date :end_date
      t.timestamps
    end
  end
end
