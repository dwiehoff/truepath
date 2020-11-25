class AddShortDescriptionToProfession < ActiveRecord::Migration[6.0]
  def change
    add_column :professions, :short_description, :string
  end
end
