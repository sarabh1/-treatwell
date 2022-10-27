class Shop < ApplicationRecord
  belongs_to :user
  has_many :services, dependent: :destroy
  has_many :reservations, dependent: :destroy, through: :services
  # has_many :employees, dependent: :destroy, through: :services
end
