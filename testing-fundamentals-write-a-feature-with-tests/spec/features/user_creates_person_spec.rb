require "rails_helper"
# require_relative "../app/person"

feature "user creates person" do
  scenario "with valid data" do
    visit new_person_path
    fill_in "person_first_name", with: "Bob"
    click_button "Create Person"

    expect(page).to have_content("Person created")
  end
end

feature "user edits existing person" do
	background do
    @person = Person.create!(:first_name => 'Bob')
  end

  scenario "with valid data" do
    visit edit_person_path(@person)
    fill_in 'person_first_name', with: 'kingsley'
    click_button 'Edit Person'

    expect(page).to have_content("Person edited")
  end
end
