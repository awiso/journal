class AddFutureLogToJour < ActiveRecord::Migration[5.2]
  def change
    add_reference :jours, :future_log, foreign_key: true
  end
end
