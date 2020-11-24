class RemoveCompletionColumnFromRoadmaps < ActiveRecord::Migration[6.0]
  def change
    remove_column :roadmaps, :completion, :boolean
  end
end
