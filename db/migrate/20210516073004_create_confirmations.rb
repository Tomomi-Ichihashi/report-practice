class CreateConfirmations < ActiveRecord::Migration[5.2]
  def change
    create_table :confirmations do |t|
      t.integer :user_id
      t.integer :report_id
      t.timestamps
    end
  end
end
