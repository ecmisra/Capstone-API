class AddUserToGasLogs < ActiveRecord::Migration[5.2]
  def change
    add_reference :gas_logs, :user, foreign_key: true
  end
end
