class CreateClassGrowths < ActiveRecord::Migration[7.0]
  def change
    create_table :class_growths do |t|
      t.string :class_name
      t.boolean :class_rank
      t.integer :hp
      t.integer :str
      t.integer :mag
      t.integer :dex
      t.integer :spd
      t.integer :def
      t.integer :res
      t.integer :lck
      t.integer :bld

      t.timestamps
    end
  end
end
