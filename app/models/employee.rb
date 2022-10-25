class Employee < ApplicationRecord
  belongs_to :service, dependent: :destroy

end
