class AlertasController < ApplicationController
  def index
    @alertas = Alerta.all
    render json: @alertas, status: :ok
  end

  def create
    @alerta = Alerta.new({ titulo: params[:titulo], tipo: params[:tipo] })
    if @alerta.save
      ActionCable.server.broadcast 'alertas_channel', @alerta
      render json: @alerta, status: :ok
    else
      render satatus: :method_not_allowed
    end
  end
end
