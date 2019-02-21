class AddValidationToReservations < ActiveRecord::Migration[5.2]
  def change
    add_column :reservations, :pending, :boolean, :default => true
  end
end
