class RenameProfessionNameToProfessionTrack < ActiveRecord::Migration[6.0]
  def change
    rename_column :professions, :name, :track
  end
end
