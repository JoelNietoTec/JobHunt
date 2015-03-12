class CreateSessionHistories < ActiveRecord::Migration
  def change
    create_table :session_histories do |t|
      t.integer :user_id
      t.string :message

      t.timestamps null: false
    end
  end
end
