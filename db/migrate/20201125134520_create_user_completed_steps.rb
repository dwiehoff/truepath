class CreateUserCompletedSteps < ActiveRecord::Migration[6.0]
  def change
    create_table :user_completed_steps do |t|
      t.references :user, null: false, foreign_key: true
      t.references :step, null: false, foreign_key: true
      t.timestamps
    end
  end
end
