class MovimentacaoPatrimoniosController < ApplicationController
  before_action :set_movimentacao_patrimonio, only: %i[ show edit update destroy ]

  # GET /movimentacao_patrimonios or /movimentacao_patrimonios.json
  def index
    @movimentacao_patrimonios = MovimentacaoPatrimonio.all
  end

  # GET /movimentacao_patrimonios/1 or /movimentacao_patrimonios/1.json
  def show
  end

  # GET /movimentacao_patrimonios/new
  def new
    @movimentacao_patrimonio = MovimentacaoPatrimonio.new
  end

  # GET /movimentacao_patrimonios/1/edit
  def edit
  end

  # POST /movimentacao_patrimonios or /movimentacao_patrimonios.json
  def create
    @movimentacao_patrimonio = MovimentacaoPatrimonio.new(movimentacao_patrimonio_params)

    respond_to do |format|
      if @movimentacao_patrimonio.save
        format.html { redirect_to @movimentacao_patrimonio, notice: "Movimentacao patrimonio was successfully created." }
        format.json { render :show, status: :created, location: @movimentacao_patrimonio }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @movimentacao_patrimonio.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /movimentacao_patrimonios/1 or /movimentacao_patrimonios/1.json
  def update
    respond_to do |format|
      if @movimentacao_patrimonio.update(movimentacao_patrimonio_params)
        format.html { redirect_to @movimentacao_patrimonio, notice: "Movimentacao patrimonio was successfully updated." }
        format.json { render :show, status: :ok, location: @movimentacao_patrimonio }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @movimentacao_patrimonio.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /movimentacao_patrimonios/1 or /movimentacao_patrimonios/1.json
  def destroy
    @movimentacao_patrimonio.destroy!

    respond_to do |format|
      format.html { redirect_to movimentacao_patrimonios_path, status: :see_other, notice: "Movimentacao patrimonio was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_movimentacao_patrimonio
      @movimentacao_patrimonio = MovimentacaoPatrimonio.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def movimentacao_patrimonio_params
      params.expect(movimentacao_patrimonio: [ :patrimonio_id, :origem_id, :destino_id, :data_movimentacao, :funcionario_id ])
    end
end
