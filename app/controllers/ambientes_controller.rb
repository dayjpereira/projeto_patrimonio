class AmbientesController < ApplicationController
  def por_tipo
    case params[:tipo]
    when "Departamento"
      ambientes = Departamento.all
    when "AreaComum"
      ambientes = AreaComum.all
    else
      ambientes = []
    end

    render json: ambientes.as_json(only: [:id, :nome])
  end

end

