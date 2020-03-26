require "application_system_test_case"

class ProjectfreesTest < ApplicationSystemTestCase
  setup do
    @projectfree = projectfrees(:one)
  end

  test "visiting the index" do
    visit projectfrees_url
    assert_selector "h1", text: "Projectfrees"
  end

  test "creating a Projectfree" do
    visit projectfrees_url
    click_on "New Projectfree"

    fill_in "Description", with: @projectfree.description
    fill_in "Github link", with: @projectfree.github_link
    fill_in "Name", with: @projectfree.name
    fill_in "Web link", with: @projectfree.web_link
    click_on "Create Projectfree"

    assert_text "Projectfree was successfully created"
    click_on "Back"
  end

  test "updating a Projectfree" do
    visit projectfrees_url
    click_on "Edit", match: :first

    fill_in "Description", with: @projectfree.description
    fill_in "Github link", with: @projectfree.github_link
    fill_in "Name", with: @projectfree.name
    fill_in "Web link", with: @projectfree.web_link
    click_on "Update Projectfree"

    assert_text "Projectfree was successfully updated"
    click_on "Back"
  end

  test "destroying a Projectfree" do
    visit projectfrees_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Projectfree was successfully destroyed"
  end
end
