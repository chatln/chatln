require "application_system_test_case"

class RecrutementsTest < ApplicationSystemTestCase
  setup do
    @recrutement = recrutements(:one)
  end

  test "visiting the index" do
    visit recrutements_url
    assert_selector "h1", text: "Recrutements"
  end

  test "creating a Recrutement" do
    visit recrutements_url
    click_on "New Recrutement"

    fill_in "City", with: @recrutement.city
    fill_in "Content", with: @recrutement.content
    fill_in "Role", with: @recrutement.role
    fill_in "Status", with: @recrutement.status
    fill_in "Title", with: @recrutement.title
    click_on "Create Recrutement"

    assert_text "Recrutement was successfully created"
    click_on "Back"
  end

  test "updating a Recrutement" do
    visit recrutements_url
    click_on "Edit", match: :first

    fill_in "City", with: @recrutement.city
    fill_in "Content", with: @recrutement.content
    fill_in "Role", with: @recrutement.role
    fill_in "Status", with: @recrutement.status
    fill_in "Title", with: @recrutement.title
    click_on "Update Recrutement"

    assert_text "Recrutement was successfully updated"
    click_on "Back"
  end

  test "destroying a Recrutement" do
    visit recrutements_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Recrutement was successfully destroyed"
  end
end
