class CreatePrestations < ActiveRecord::Migration[7.2]
  def change
    create_table :prestations do |t|
      t.references :client, null: false, foreign_key: true

      t.timestamps
    end
  end
end
