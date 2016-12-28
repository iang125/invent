class CreateInkExchanges < ActiveRecord::Migration[5.0]
  def change
    create_table :ink_exchanges do |t|
      t.string :ink_id
      t.string :user_id
      t.string :room
      t.string :printer
      t.datetime :exchange_datetime
      t.integer :quantity
      t.boolean :emptying

      t.timestamps
    end
  end
end
