class CreateQueueEntries < ActiveRecord::Migration[7.1]
  def change
    create_table :queue_entries do |t|
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
