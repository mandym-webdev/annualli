class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :question
      t.integer :show_month
      t.integer :show_day
    end
  end
end
