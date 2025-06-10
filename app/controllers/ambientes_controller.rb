class AmbientesController < ApplicationController
  def por_tipo
    ambientes = Ambiente.where(type: params[:tipo])
    render json: ambientes.select(:id, :nome) # evita enviar atributos desnecessários
  end
end

