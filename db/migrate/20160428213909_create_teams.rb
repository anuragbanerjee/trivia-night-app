class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|

      t.timestamps null: false
      t.integer :winner
      t.string :name
      t.integer :score
      t.integer :phone_number, limit: 5
    end
  end
end
