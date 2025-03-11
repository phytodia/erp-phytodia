class CreateClients < ActiveRecord::Migration[7.2]
  def change
    create_table :clients do |t|
      t.string :code
      t.string :society
      t.string :mail_contact
      t.string :mail_resultat
      t.boolean :amv,default:false

      t.timestamps
    end
  end
end
