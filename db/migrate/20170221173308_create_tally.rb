class CreateTally < ActiveRecord::Migration[5.0]
  def change
    add_column :questions, :tally_a, :integer, default: 0
    add_column :questions, :tally_b, :integer, default: 0
  end
end
