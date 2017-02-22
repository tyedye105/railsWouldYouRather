require 'rails_helper'

describe Question do
  it {should validate_presence_of :title}
  it {should validate_presence_of :description}
  it {should validate_presence_of :option_a}
  it {should validate_presence_of :option_b}


end



describe '#add_one' do
  it 'will add one to tally property' do
    question_test = Question.create({:title => "would you rather", :description => "nuff said", :option_a => "be an xman", :option_b => "a defender"})
    expect(question_test.add_one(question_test.tally_a)).to eq(1)
  end

end
