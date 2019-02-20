class Experience < ApplicationRecord
  has_many :reservations, dependent: :destroy
  belongs_to :user
  # validates :name, presence: true
  # validates :description, presence: true
  # validates :price, presence: true
  # validates :participants_number_max, presence: true
  # validates :categorie_id, presence: true
  #validates :photo, presence: true
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
