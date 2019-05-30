class CreateFutureLogEntries < ActiveRecord::Migration[5.2]
  def change
    create_table :future_log_entries do |t|
      t.string :content

      t.timestamps
    end
  end
end
