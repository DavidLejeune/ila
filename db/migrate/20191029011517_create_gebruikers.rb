class CreateGebruikers < ActiveRecord::Migration[6.0]
  def change
    create_table :gebruikers do |t|
      t.string :name
      t.string :slug

      t.timestamps
    end
    add_index :gebruikers, :slug, unique: true
  end
end
