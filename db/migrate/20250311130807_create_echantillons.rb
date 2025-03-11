class CreateEchantillons < ActiveRecord::Migration[7.2]
  def change
    create_table :echantillons do |t|
      t.string :code
      t.text :description
      t.integer :n_lot
      t.string :reception_date
      t.references :prestation, null: false, foreign_key: true

      t.timestamps
    end
  end
end
