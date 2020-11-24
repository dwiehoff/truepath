class CreateUserKasis < ActiveRecord::Migration[6.0]
  def change
    create_table :user_kasis do |t|
      t.references :user, null: false, foreign_key: true
      t.references :kasi, null: false, foreign_key: true

      t.timestamps
    end
  end
end
