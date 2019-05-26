class CreateFutureLogs < ActiveRecord::Migration[5.2]
  def change
    create_table :future_logs do |t|
      t.references :jour, foreign_key: true
      t.text :description

      t.timestamps
    end
  end
end
