class Reservation < ApplicationRecord
  belongs_to :user, dependent: :destroy
  belongs_to :services, dependent: :destroy
  has_many :services, dependent: :destroy
end
