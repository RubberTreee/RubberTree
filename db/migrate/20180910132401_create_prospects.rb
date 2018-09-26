class CreateProspects < ActiveRecord::Migration[5.2]
  def change
    create_table :prospects do |t|
      t.string :first_name, null: false
      t.string :last_name, null: false
      t.string :email, null: false
      t.string :mobile, null: false
      t.string :how_heard, null: false
      t.boolean :marketing, null: false

      t.timestamps
    end
  end
end
