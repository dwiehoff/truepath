class RemoveRoadmapReferenceFromSteps < ActiveRecord::Migration[6.0]
  def change
    remove_column :steps, :roadmap_id
  end
end
