class Reservation < ApplicationRecord
  belongs_to :user
  belongs_to :experience

  # validates :participants_number, presence: true
  # validates :start_at, presence: true
  # validates :end_at, presence: true

end
