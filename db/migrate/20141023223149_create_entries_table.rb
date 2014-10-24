class CreateEntriesTable < ActiveRecord::Migration
  def change
    create_table :entries do |t|
      t.string :title
      t.text :body
      t.date :date_entered

      t.timestamps
    end
  end
end
