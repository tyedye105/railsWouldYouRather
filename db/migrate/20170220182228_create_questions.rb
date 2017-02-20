class CreateQuestions < ActiveRecord::Migration[5.0]
  def change
    create_table :questions do |t|
      t.string :title
      t.string :description
      t.string :option_a
      t.string :option_b
      t.timestamps
    end
  end
end
