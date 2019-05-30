class AddFutureLogEntryToFutureLog < ActiveRecord::Migration[5.2]
  def change
    add_reference :future_logs, :future_log_entry, foreign_key: true
  end
end
