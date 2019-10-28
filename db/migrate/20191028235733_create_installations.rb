class CreateInstallations < ActiveRecord::Migration[6.0]
  def change
    create_table :installations do |t|
      t.string :title
      t.text :description
      t.string :credit
      t.string :copyright
      t.string :slu

      t.timestamps
    end
    add_index :installations, :slu, unique: true
  end
end
