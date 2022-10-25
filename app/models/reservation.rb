class Reservation < ApplicationRecord
  belongs_to :user, dependent: :destroy
  belongs_to :services, dependent: :destroy
end
