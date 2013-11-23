class CreateBravos < ActiveRecord::Migration
  def change
    create_table :bravos do |t|
      t.integer :target_id
      t.integer :user_id
      t.string :target_type
    end
  end
end
