class UserController < ApplicationController

  def create
    nan = session[:user_nan]

    if Account.last
      @account = Account.new do |a|
          a.kontu_zenbakia = Account.last.kontu_zenbakia.to_i + 1
          a.erabiltzaile_id = nan
          a.kopurua = "0"
          a.sortze_data = Time.now.strftime("%Y-%m-%d")
        end
      @account.save()
    else
      @account = Account.new do |a|
          a.kontu_zenbakia = "1234567890000"
          a.erabiltzaile_id = nan
          a.kopurua = "0"
          a.sortze_data = Time.now.strftime("%Y-%m-%d")
        end
      @account.save()
    end

    redirect_to(:kontua, message: "Kontu berria sortu da")
  end

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
