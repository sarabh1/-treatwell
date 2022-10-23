class Shop < ApplicationRecord
  belongs_to :user, dependent: :destroy
end
