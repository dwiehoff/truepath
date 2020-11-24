class CreateRoadmaps < ActiveRecord::Migration[6.0]
  def change
    create_table :roadmaps do |t|
      t.boolean :completion
      t.references :profession

      t.timestamps
    end
  end
end
