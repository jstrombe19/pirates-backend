class CreateShips < ActiveRecord::Migration[6.0]
  def change
    create_table :ships do |t|
      t.string :name
      t.string :captain
      t.boolean :cursed, default: true

      t.timestamps
    end
  end
end
