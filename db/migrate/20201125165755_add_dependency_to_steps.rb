class AddDependencyToSteps < ActiveRecord::Migration[6.0]
  def change
    add_column :steps, :dependency, :integer
  end
end
