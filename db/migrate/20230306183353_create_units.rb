class CreateUnits < ActiveRecord::Migration[7.0]
  def change
    create_table :units do |t|
      t.string :char_name
      t.integer :b_lvl
      t.integer :b_hp
      t.integer :b_str
      t.integer :b_mag
      t.integer :b_dex
      t.integer :b_spd
      t.integer :b_def
      t.integer :b_res
      t.integer :b_lck
      t.integer :b_bld
      t.integer :b_mov
      t.integer :g_hp
      t.integer :g_str
      t.integer :g_mag
      t.integer :g_dex
      t.integer :g_spd
      t.integer :g_def
      t.integer :g_res
      t.integer :g_lck
      t.integer :g_bld

      t.timestamps
    end
  end
end
