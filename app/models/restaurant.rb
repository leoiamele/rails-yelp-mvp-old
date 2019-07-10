class Restaurant < ApplicationRecord
  TYPE = %w[chinese italian japanese french belgian]
  validates :name, :address, :phone_number, presence: true
  validates :category, inclusion: { in: [TYPE] }
  has_many :review, dependent: :destroy
end
