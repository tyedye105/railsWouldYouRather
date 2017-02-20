class Question < ActiveRecord::Base
  validates :title, :presence => true
  validates :description, :presence => true
  validates :option_a, :presence => true
  validates :option_b, :presence => true
end
