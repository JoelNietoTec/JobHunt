class AddActiveToCandidates < ActiveRecord::Migration
  def change
    add_column :candidates, :active, :boolean
  end
end
