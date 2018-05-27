class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :izena
      t.string :abizena
      t.string :pasahitza
      t.string :emaila
      t.string :telefonoa
      t.string :helbidea
      t.date :sortze_data
      t.string :nan

      t.timestamps
    end
  end
end
