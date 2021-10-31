class CreateAnswers < ActiveRecord::Migration[6.1]
  def change
    create_table :answers do |t|
      t.references :comment, null: true

      t.timestamps
    end
  end
end
