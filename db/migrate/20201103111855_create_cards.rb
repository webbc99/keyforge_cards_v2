class CreateCards < ActiveRecord::Migration[6.0]
  def change
    create_table :cards do |t|
      t.string :card_id
      t.string :card_title
      t.string :house
      t.string :card_type
      t.string :front_image
      t.string :card_text
      t.string :traits
      t.integer :amber
      t.integer :power
      t.integer :armor
      t.string :rarity
      t.string :flavor_text
      t.integer :card_number
      t.integer :expansion
      t.boolean :is_maverick
      t.boolean :is_anomaly
      t.boolean :is_enhanced

      t.timestamps
    end
  end
end
