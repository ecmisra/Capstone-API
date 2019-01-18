class CreateGasLogs < ActiveRecord::Migration[5.2]
  def change
    create_table :gas_logs do |t|
      t.date :date
      t.integer :odometer
      t.integer :volume
      t.string :fuel
      t.string :brand
      t.integer :price
      t.integer :total

      t.timestamps
    end
  end
end
