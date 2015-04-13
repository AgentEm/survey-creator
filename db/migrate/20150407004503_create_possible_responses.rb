class CreatePossibleResponses < ActiveRecord::Migration
  def change
    create_table :possible_responses do |t|
      t.string :value
      t.string :colour
      t.string :label
      t.string :icon_id

      t.timestamps null: false
    end
  end
end
