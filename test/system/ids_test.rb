require "application_system_test_case"

class IdsTest < ApplicationSystemTestCase
  setup do
    @id = ids(:one)
  end

  test "visiting the index" do
    visit ids_url
    assert_selector "h1", text: "Ids"
  end

  test "should create id" do
    visit ids_url
    click_on "New id"

    fill_in "Name", with: @id.name
    fill_in "Place", with: @id.place
    click_on "Create Id"

    assert_text "Id was successfully created"
    click_on "Back"
  end

  test "should update Id" do
    visit id_url(@id)
    click_on "Edit this id", match: :first

    fill_in "Name", with: @id.name
    fill_in "Place", with: @id.place
    click_on "Update Id"

    assert_text "Id was successfully updated"
    click_on "Back"
  end

  test "should destroy Id" do
    visit id_url(@id)
    click_on "Destroy this id", match: :first

    assert_text "Id was successfully destroyed"
  end
end
