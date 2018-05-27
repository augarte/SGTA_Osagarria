class UserController < ApplicationController
  def kontua
  	id = '12345678A'
  	kontua = '1234567891234'
  	@erabiltzaileak = User.find(id)
  	@kontuak = Account.find_by_sql("SELECT  `accounts`.* FROM `accounts` WHERE `accounts`.`erabiltzaile_id` = '#{id}'")
  	@transakzioak = Transaction.find_by_bildaltzaile_kontua(kontua)
  end
end
