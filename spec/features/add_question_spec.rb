require "rails_helper"

describe "the add question path" do
  it "allow the user to create a new question.", js: true do
    visit ('/')
    click_on "question?"
    fill_in "Title", :with => "Would you rather"
    fill_in "Option a", :with => "Cats"
    fill_in "Option b", :with => "Dogs"
    fill_in "Description", :with => "Catdog"
    click_button "Create Question"
    expect(page).to have_content("Catdog")
  end
end
