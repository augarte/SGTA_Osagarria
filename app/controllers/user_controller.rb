class UserController < ApplicationController
  def kontua
  	id = '12345678A'
  	p "zZZZZZZZZ"
  	kontua = '1234567891234'
  	@erabiltzailea = User.find(id)
  	p @erabiltzailea
  	@kontuak = Account.find_by_sql("SELECT  `accounts`.* FROM `accounts` WHERE `accounts`.`erabiltzaile_id` = '#{id}'")
  	@transakzioak = Transaction.find_by_bildaltzaile_kontua(kontua)
  end
end
