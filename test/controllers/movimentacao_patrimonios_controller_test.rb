require "test_helper"

class MovimentacaoPatrimoniosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @movimentacao_patrimonio = movimentacao_patrimonios(:one)
  end

  test "should get index" do
    get movimentacao_patrimonios_url
    assert_response :success
  end

  test "should get new" do
    get new_movimentacao_patrimonio_url
    assert_response :success
  end

  test "should create movimentacao_patrimonio" do
    assert_difference("MovimentacaoPatrimonio.count") do
      post movimentacao_patrimonios_url, params: { movimentacao_patrimonio: { data_movimentacao: @movimentacao_patrimonio.data_movimentacao, destino_id: @movimentacao_patrimonio.destino_id, funcionario_id: @movimentacao_patrimonio.funcionario_id, origem_id: @movimentacao_patrimonio.origem_id, patrimonio_id: @movimentacao_patrimonio.patrimonio_id } }
    end

    assert_redirected_to movimentacao_patrimonio_url(MovimentacaoPatrimonio.last)
  end

  test "should show movimentacao_patrimonio" do
    get movimentacao_patrimonio_url(@movimentacao_patrimonio)
    assert_response :success
  end

  test "should get edit" do
    get edit_movimentacao_patrimonio_url(@movimentacao_patrimonio)
    assert_response :success
  end

  test "should update movimentacao_patrimonio" do
    patch movimentacao_patrimonio_url(@movimentacao_patrimonio), params: { movimentacao_patrimonio: { data_movimentacao: @movimentacao_patrimonio.data_movimentacao, destino_id: @movimentacao_patrimonio.destino_id, funcionario_id: @movimentacao_patrimonio.funcionario_id, origem_id: @movimentacao_patrimonio.origem_id, patrimonio_id: @movimentacao_patrimonio.patrimonio_id } }
    assert_redirected_to movimentacao_patrimonio_url(@movimentacao_patrimonio)
  end

  test "should destroy movimentacao_patrimonio" do
    assert_difference("MovimentacaoPatrimonio.count", -1) do
      delete movimentacao_patrimonio_url(@movimentacao_patrimonio)
    end

    assert_redirected_to movimentacao_patrimonios_url
  end
end
