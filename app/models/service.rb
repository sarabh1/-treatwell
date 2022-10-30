class Service < ApplicationRecord
  has_many :employees, dependent: :destroy
  belongs_to :shop,dependent: :destroy
  belongs_to :reservation, dependent: :destroy
end
