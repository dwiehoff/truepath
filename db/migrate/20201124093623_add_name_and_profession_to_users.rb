class AddNameAndProfessionToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :name, :string
    add_reference :users, :profession, foreign_key: true
  end
end
