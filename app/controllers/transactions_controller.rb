class TransactionsController < ApplicationController

  # GET /transactions
  def index
    @transactions = Transaction.all
  end
  # GET /transactions/new
  def new
    @transaction = Transaction.new
  end
  # GET /transactions/id
  def show
    @transaction = Transaction.find(params[:id])
  end
  # POST /transactions
  def create
    if Transaction.last
    	@transaction = Transaction.new(transakzio_kodea: Transaction.last.transakzio_kodea + 1, bidaltzaile_kontua: 10001, azalpena: params[:transaction][:azalpena], hartzaile_kontua: params[:transaction][:hartzaile_kontua], kopurua: params[:transaction][:kopurua])
    else
	@transaction = Transaction.new(transakzio_kodea: 1, bidaltzaile_kontua: 10001, azalpena: params[:transaction][:azalpena], hartzaile_kontua: params[:transaction][:hartzaile_kontua], kopurua: params[:transaction][:kopurua])
    end
    
    if @transaction.valid?
    	if @transaction.save
    	   redirect_to @transaction
	end
    else
	render :new
    end
  end 
end
