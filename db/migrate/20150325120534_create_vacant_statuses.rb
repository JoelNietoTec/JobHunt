class CreateVacantStatuses < ActiveRecord::Migration
  def change
    create_table :vacant_statuses do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
