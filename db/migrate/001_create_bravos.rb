# coding: utf-8
class CreateBravos < ActiveRecord::Migration
  def change
    create_table :bravos do |t|
      t.integer :target_id, :null => false
      t.string :target_type, :null => false
      t.integer :user_id
    end

    add_index :bravos, [:target_id, :target_type]
  end
end
