class CreatePrestations < ActiveRecord::Migration[7.2]
  def change
    create_table :prestations do |t|
      t.references :client, null: false, foreign_key: true
      t.string :code
      t.string :n_devis

      t.timestamps
    end
  end
end
