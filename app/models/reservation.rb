class Reservation < ApplicationRecord
  belongs_to :user, dependent: :destroy
  has_many :services, dependent: :destroy
end
