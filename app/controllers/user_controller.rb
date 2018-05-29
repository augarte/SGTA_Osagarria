class UserController < ApplicationController

  def kontua
  	nan = session[:user_nan]
  	@erabiltzailea = User.find(nan)
  	@kontuak = Account.where(:erabiltzaile_id => nan)
    @transakzioak = []
    @kontuak.each do |kontua|
  	  transAux = Transaction.where(:bidaltzaile_kontua => kontua.kontu_zenbakia)
      if transAux.empty?
      else
        @transakzioak += transAux
      end
    end
  end
end
