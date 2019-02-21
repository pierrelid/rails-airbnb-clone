class Experience < ApplicationRecord
  mount_uploader :photo, PhotoUploader
  has_many :reservations, dependent: :destroy
  belongs_to :user
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
