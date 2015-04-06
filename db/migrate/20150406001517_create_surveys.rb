class CreateSurveys < ActiveRecord::Migration
  def change
    create_table :surveys do |t|
      t.string :name
      t.string :languages
      t.boolean :uses_category_selector

      t.timestamps null: false
    end
  end
end
