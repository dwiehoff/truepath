class CreateSteps < ActiveRecord::Migration[6.0]
  def change
    create_table :steps do |t|
      t.string :name
      t.float :duration_in_days
      t.string :icon
      t.integer :order
      t.text :description
      t.string :resource_url
      t.references :roadmap, null: false, foreign_key: true

      t.timestamps
    end
  end
end
