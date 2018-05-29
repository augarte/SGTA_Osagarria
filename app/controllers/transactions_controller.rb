class TransactionsController < ApplicationController

  def index
    nan = session[:user_nan]
    @kontuak = Account.where(:erabiltzaile_id => nan)
    @transaction = Transaction.new
  end

  # POST /transactions
  def create
    kontu_zenbakia = params[:transaction][:bidaltzaile_kontua]
    hartzaile_kontua = params[:transaction][:hartzaile_kontua]
    kopurua = params[:transaction][:kopurua].to_f
    azalpena = params[:transaction][:azalpena]

    @accountBidali = Account.find(kontu_zenbakia)

    if @accountBidali.kopurua>=kopurua && kopurua>0
      if Account.exists?(kontu_zenbakia: hartzaile_kontua)
        @accountJaso = Account.find(hartzaile_kontua)
        ActiveRecord::Base.transaction do

          if Transaction.last
            @transaction = Transaction.new do |t|
              t.id = Transaction.last.id + 1,
              t.bidaltzaile_kontua = kontu_zenbakia,
              t.azalpena = azalpena,
              t.hartzaile_kontua = hartzaile_kontua,
              t.kopurua = kopurua
              t.data = Time.now.strftime("%Y-%m-%d")
            end
          else
            @transaction = Transaction.new do |t|
              t.id = 0,
              t.bidaltzaile_kontua = kontu_zenbakia,
              t.azalpena = azalpena,
              t.hartzaile_kontua = hartzaile_kontua,
              t.kopurua = kopurua
              t.data = Time.now.strftime("%Y-%m-%d")
            end
          end
          totalBidaltzaile = @accountBidali.kopurua-kopurua
          totalJasotzaile = @accountJaso.kopurua+kopurua

          @accountBidali = @accountBidali.update_attribute(:kopurua, totalBidaltzaile)
          @accountJaso = @accountJaso.update_attribute(:kopurua, totalJasotzaile)

          @transaction.save
        end
        flash[:notice] = "bidalketa gauzatu egin da"
        redirect_to(:transactions, message: "Dirua bidali nahi den kontu zenbakia ez da existitzen")
      else
        flash[:alert] = "Dirua bidali nahi den kontu zenbakia ez da existitzen"
        redirect_to(:transactions, message: "Dirua bidali nahi den kontu zenbakia ez da existitzen")
      end
    else
      flash[:alert] = "Dirua kopurua ez da egokia"
      redirect_to(:transactions, message: "Dirua kopurua ez da egokia")
    end 
  end
end
