class Shop < ApplicationRecord
  belongs_to :user
  has_many :services, dependent: :destroy
  has_many :reservations, dependent: :destroy, through: :services
  
  has_many_attached :photos

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  # has_many :employees, dependent: :destroy, through: :services
end
