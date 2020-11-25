class RemoveRoadmapTable < ActiveRecord::Migration[6.0]
  def change
    drop_table :roadmaps
  end
end

