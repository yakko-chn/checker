class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.date       :buy_day, null: false
      t.integer    :category_id, null: false
      t.integer    :food_id, null: false
      t.integer    :size_id, null: false
      t.date       :sell_by, null: false
      t.text       :memo
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end

