require "rails_helper"

describe "the edit question process" do
  it "allows the user to edit a question", js: true do
    question = FactoryGirl.create(:question)
    visit ('/')
    click_on "Edit"
    fill_in "Title", :with => "Would you rather"
    fill_in "Option a", :with => "Cats!"
    fill_in "Option b", :with => "Dogs!"
    fill_in "Description", :with => "Catdog"
    click_button "Update Question"
    expect(page).to have_content("Cats!")
  end
end
