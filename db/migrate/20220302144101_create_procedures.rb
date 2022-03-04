class CreateProcedures < ActiveRecord::Migration[5.2]
  def change
    create_table :procedures do |t|
      t.string :image
      t.text :content
      t.references :recipe, foreign_key: true

      t.timestamps
    end
    add_index :procedures, [:recipe_id, :created_at]
  end
end
