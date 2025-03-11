class CreateAnalyses < ActiveRecord::Migration[7.2]
  def change
    create_table :analyses do |t|
      t.string :code
      t.text :description
      t.boolean :amv
      t.string :code_mo
      t.float :price
      t.references :echantillon, null: false, foreign_key: true

      t.timestamps
    end
  end
end
