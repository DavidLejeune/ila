class CreateInstallations < ActiveRecord::Migration[6.0]
  def change
    create_table :installations do |t|
      t.string :title
      t.text :description
      t.string :credit
      t.string :copyright
      t.string :slug

      t.timestamps
    end
    add_index :installations, :slug, unique: true
  end
end
