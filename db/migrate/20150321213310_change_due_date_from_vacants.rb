class ChangeDueDateFromVacants < ActiveRecord::Migration
  def change
    change_column :vacants, :due_date, :date
  end
end
