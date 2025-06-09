require "application_system_test_case"

class AreaComumsTest < ApplicationSystemTestCase
  setup do
    @area_comum = area_comums(:one)
  end

  test "visiting the index" do
    visit area_comums_url
    assert_selector "h1", text: "Area comums"
  end

  test "should create area comum" do
    visit area_comums_url
    click_on "New area comum"

    fill_in "Nome", with: @area_comum.nome
    click_on "Create Area comum"

    assert_text "Area comum was successfully created"
    click_on "Back"
  end

  test "should update Area comum" do
    visit area_comum_url(@area_comum)
    click_on "Edit this area comum", match: :first

    fill_in "Nome", with: @area_comum.nome
    click_on "Update Area comum"

    assert_text "Area comum was successfully updated"
    click_on "Back"
  end

  test "should destroy Area comum" do
    visit area_comum_url(@area_comum)
    click_on "Destroy this area comum", match: :first

    assert_text "Area comum was successfully destroyed"
  end
end
