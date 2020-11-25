class AddProfessionToSteps < ActiveRecord::Migration[6.0]
  def change
    add_reference :steps, :profession
  end
end
