class CreateTransactions < ActiveRecord::Migration[5.0]
  def change
    create_table :transactions do |t|
      t.string :user_id
      t.string :equipment_id
      t.datetime :RentedDatetime
      t.datetime :ReturnedDatetime
      t.string :contract

      t.timestamps
    end
  end
end
