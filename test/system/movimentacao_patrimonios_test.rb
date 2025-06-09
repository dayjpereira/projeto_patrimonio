require "application_system_test_case"

class MovimentacaoPatrimoniosTest < ApplicationSystemTestCase
  setup do
    @movimentacao_patrimonio = movimentacao_patrimonios(:one)
  end

  test "visiting the index" do
    visit movimentacao_patrimonios_url
    assert_selector "h1", text: "Movimentacao patrimonios"
  end

  test "should create movimentacao patrimonio" do
    visit movimentacao_patrimonios_url
    click_on "New movimentacao patrimonio"

    fill_in "Data movimentacao", with: @movimentacao_patrimonio.data_movimentacao
    fill_in "Destino", with: @movimentacao_patrimonio.destino_id
    fill_in "Funcionario", with: @movimentacao_patrimonio.funcionario_id
    fill_in "Origem", with: @movimentacao_patrimonio.origem_id
    fill_in "Patrimonio", with: @movimentacao_patrimonio.patrimonio_id
    click_on "Create Movimentacao patrimonio"

    assert_text "Movimentacao patrimonio was successfully created"
    click_on "Back"
  end

  test "should update Movimentacao patrimonio" do
    visit movimentacao_patrimonio_url(@movimentacao_patrimonio)
    click_on "Edit this movimentacao patrimonio", match: :first

    fill_in "Data movimentacao", with: @movimentacao_patrimonio.data_movimentacao
    fill_in "Destino", with: @movimentacao_patrimonio.destino_id
    fill_in "Funcionario", with: @movimentacao_patrimonio.funcionario_id
    fill_in "Origem", with: @movimentacao_patrimonio.origem_id
    fill_in "Patrimonio", with: @movimentacao_patrimonio.patrimonio_id
    click_on "Update Movimentacao patrimonio"

    assert_text "Movimentacao patrimonio was successfully updated"
    click_on "Back"
  end

  test "should destroy Movimentacao patrimonio" do
    visit movimentacao_patrimonio_url(@movimentacao_patrimonio)
    click_on "Destroy this movimentacao patrimonio", match: :first

    assert_text "Movimentacao patrimonio was successfully destroyed"
  end
end
