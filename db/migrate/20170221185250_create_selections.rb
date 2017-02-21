class CreateSelections < ActiveRecord::Migration[5.0]
  def change
    create_table :selections do |t|
      t.string :choice
      t.integer :question_id
    end
  end
end
