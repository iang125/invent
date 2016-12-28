class CreateInks < ActiveRecord::Migration[5.0]
  def change
    create_table :inks do |t|
      t.string :name
      t.string :model
      t.string :manufacturer

      t.timestamps
    end
  end
end
