require "rails_helper"

describe "delete question process" do
  it "allow the user to delete a question.", js: true do
    question = FactoryGirl.create(:question)
    visit ('/')
    click_on "Delete"
    expect(page).to have_no_content("pizza forever")
  end
end
