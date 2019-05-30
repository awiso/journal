class AddFutureLogToFutureLogEntry < ActiveRecord::Migration[5.2]
  def change
    add_reference :future_log_entries, :future_log, foreign_key: true
  end
end
