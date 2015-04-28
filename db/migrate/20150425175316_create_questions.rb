class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :body
      t.integer :score, default: 0

      t.timestamps
    end
  end
end
