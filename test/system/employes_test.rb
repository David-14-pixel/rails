require "application_system_test_case"

class EmployesTest < ApplicationSystemTestCase
  setup do
    @employe = employes(:one)
  end

  test "visiting the index" do
    visit employes_url
    assert_selector "h1", text: "Employes"
  end

  test "creating a Employe" do
    visit employes_url
    click_on "New Employe"

    fill_in "Age", with: @employe.age
    fill_in "Cargo", with: @employe.cargo
    fill_in "Last name", with: @employe.last_name
    fill_in "Name", with: @employe.name
    fill_in "Salary", with: @employe.salary
    fill_in "Telephone", with: @employe.telephone
    click_on "Create Employe"

    assert_text "Employe was successfully created"
    click_on "Back"
  end

  test "updating a Employe" do
    visit employes_url
    click_on "Edit", match: :first

    fill_in "Age", with: @employe.age
    fill_in "Cargo", with: @employe.cargo
    fill_in "Last name", with: @employe.last_name
    fill_in "Name", with: @employe.name
    fill_in "Salary", with: @employe.salary
    fill_in "Telephone", with: @employe.telephone
    click_on "Update Employe"

    assert_text "Employe was successfully updated"
    click_on "Back"
  end

  test "destroying a Employe" do
    visit employes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Employe was successfully destroyed"
  end
end
