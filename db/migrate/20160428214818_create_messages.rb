class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|

      t.timestamps null: false
      t.string :content
      t.string :phone_number
      t.integer :score
    end
  end
end
