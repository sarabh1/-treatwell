class Shop < ApplicationRecord
  belongs_to :user, dependent: :destroy
  has_many :services, dependent: :destroy
  has_many :reservations, through: :services
  has_many :employees, through: :services
end
