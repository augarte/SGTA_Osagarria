class CreateTransactions < ActiveRecord::Migration[5.2]
  def change
    create_table :transactions do |t|
      t.integer :transakzio_kodea
      t.integer :bidaltzaile_kontua
      t.string :azalpena
      t.integer :hartzaile_kontua
      t.decimal :kopurua

      t.timestamps
    end
  end
end
