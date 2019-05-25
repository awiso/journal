class CreateJours < ActiveRecord::Migration[5.2]
  def change
    create_table :jours do |t|
      t.string :title

      t.timestamps
    end
  end
end
