class CreateNumbers < ActiveRecord::Migration[6.1]
  def change
    create_table :numbers do |t|
      t.integer :user_id, null: false
      t.integer :number, null: false, length: 2
      t.timestamps
    end

    add_index :numbers, :number, unique: true
  end
end
