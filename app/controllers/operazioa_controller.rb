class OperazioaController < ApplicationController
  def index
    @transakzioak = Transaction.all
  end

  def new
    @transakzioa = Transaction.new
  end

  def show
    @transakzioa = Transaction.find(params[:id])
  end
end
