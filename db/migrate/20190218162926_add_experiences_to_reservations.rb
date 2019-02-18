class AddExperiencesToReservations < ActiveRecord::Migration[5.2]
  def change
    add_reference :reservations, :experience, foreign_key: true
  end
end
