class AddCompletionToSteps < ActiveRecord::Migration[6.0]
  def change
    add_column :steps, :completion, :boolean
  end
end
