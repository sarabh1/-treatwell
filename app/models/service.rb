class Service < ApplicationRecord
  has_many :employees, dependent: :destroy
  belongs_to :shop,dependent: :destroy
  # has_many :reservations, dependent: :destroy
end
