class GasLogSerializer < ActiveModel::Serializer
  attributes :id, :date, :odometer, :volume, :type, :brand, :price, :total
end
