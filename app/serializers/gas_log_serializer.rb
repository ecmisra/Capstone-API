class GasLogSerializer < ActiveModel::Serializer
  attributes :id, :date, :odometer, :volume, :fuel, :brand, :price, :total
end
