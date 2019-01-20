class GasLog < ApplicationRecord
  belongs_to :user
  validates :date, :odometer, :volume, :fuel, :brand, :price, :total, :user_id, presence: true
end
