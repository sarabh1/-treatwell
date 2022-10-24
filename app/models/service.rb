class Service < ApplicationRecord
  belongs_to :shop, dependent: :destroy
  has_many :employees, dependent: :destroy
  has_many :reservations, dependent: :destroy
end
