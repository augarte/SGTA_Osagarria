class UserController < ApplicationController
  def kontua
  	id = '12345678A'
  	kontua = '1234567891234'
  	@erabiltzailea = User.find(id)
  	session[:user_nan] = @erabiltzailea.nan
	session[:user_izena] = @erabiltzailea.izena
	
  	@kontuak = Account.find_by_sql("SELECT  `accounts`.* FROM `accounts` WHERE `accounts`.`erabiltzaile_id` = '#{id}'")
  	@transakzioak = Transaction.find_by_bidaltzaile_kontua(kontua)
  end
end
