class CreateExitReasons < ActiveRecord::Migration
  def change
    create_table :exit_reasons do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
