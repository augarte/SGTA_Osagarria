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
  def change
    create_table :users do |t|
      t.string :nan
      t.string :izena
      t.string :abizenak
      t.string :pasahitza
      t.string :emaila
      t.integer :telefonoa
      t.string :helbidea
      t.date :sortze_data

      t.timestamps
    end
  end
end
