class Question < ActiveRecord::Base
  validates :title, :presence => true
  validates :description, :presence => true
  validates :option_a, :presence => true
  validates :option_b, :presence => true


  def add_one(tally)
    tally_to_add = tally
    return tally_to_add + 1
  end
end
