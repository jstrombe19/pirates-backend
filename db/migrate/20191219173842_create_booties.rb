class CreateBooties < ActiveRecord::Migration[6.0]
  def change
    create_table :booties do |t|
      t.string :gold
      t.boolean :woodenChest

      t.timestamps
    end
  end
end
