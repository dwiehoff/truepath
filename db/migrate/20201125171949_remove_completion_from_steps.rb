class RemoveCompletionFromSteps < ActiveRecord::Migration[6.0]
  def change
    remove_column :steps, :completion
  end
end
