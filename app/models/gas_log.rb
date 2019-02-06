class GasLog < ApplicationRecord
  belongs_to :user
  validates :date, :odometer, :volume, :fuel, :brand, :price, :user_id, presence: true
end
