class CreateBuckaneers < ActiveRecord::Migration[6.0]
  def change
    create_table :buckaneers do |t|
      t.string :name
      t.integer :age
      t.boolean :eyepatch
      t.boolean :pegleg
      t.boolean :parrot, default: true

      t.timestamps
    end
  end
end
