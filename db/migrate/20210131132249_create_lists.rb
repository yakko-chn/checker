class CreateLists < ActiveRecord::Migration[6.0]
  def change
    create_table :lists do |t|
      t.references :user, foreign_key: true
      t.date :date, null: false
      t.text :buy_list, null: false
      t.timestamps
    end
  end
end
