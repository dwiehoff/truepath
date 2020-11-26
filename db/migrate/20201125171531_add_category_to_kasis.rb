class AddCategoryToKasis < ActiveRecord::Migration[6.0]
  def change
    add_column :kasis, :category, :string
  end
end
