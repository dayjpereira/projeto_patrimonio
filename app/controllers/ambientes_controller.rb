class AmbientesController < ApplicationController
  
  before_action :set_ambiente, only: %i[ edit update destroy ]

  def index
    @ambientes = Ambiente.all
  end

  def new
    @ambiente = Ambiente.new
  end

  def create
    @ambiente = Ambiente.new(ambiente_params)
    if @ambiente.save
      redirect_to ambientes_path, notice: "Ambiente criado com sucesso!"
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    if @ambiente.update(ambiente_params)
      redirect_to ambientes_path, notice: "Ambiente atualizado com sucesso!"
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @ambiente.destroy
    redirect_to ambientes_path, notice: "Ambiente excluído com sucesso!"
  end

  private

  def set_ambiente
    @ambiente = Ambiente.find(params[:id])
  end

  def ambiente_params
    params.require(:ambiente).permit(:nome, :type)
  end
  
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

