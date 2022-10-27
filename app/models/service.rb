class Service < ApplicationRecord
  has_many :employees, dependent: :destroy
  belongs_to :shop
  has_many :reservations, dependent: :destroy
end
