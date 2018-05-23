class CreateTransactions < ActiveRecord::Migration[5.2]
  def change
    create_table :transactions do |t|
      t.integer :transakzio_kodea
      t.integer :bidaltzaile_kz
      t.string :asuntoa
      t.date :data
      t.integer :jasotzaile_kz
      t.decimal :kopurua

      t.timestamps
    end
  end
end
