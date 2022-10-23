class Service < ApplicationRecord
  belongs_to :shop, dependent: :destroy
end
