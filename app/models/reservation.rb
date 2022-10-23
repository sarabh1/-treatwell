class Reservation < ApplicationRecord
  belongs_to :user, dependent: :destroy
  belongs_to :service, dependent: :destroy
end
