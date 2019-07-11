class Restaurant < ApplicationRecord
  TYPE = ["chinese", "italian", "japanese", "french", "belgian"]
  validates :name, :address, :phone_number, presence: true
  validates :category, inclusion: { in: TYPE }
  has_many :reviews, dependent: :destroy
end
