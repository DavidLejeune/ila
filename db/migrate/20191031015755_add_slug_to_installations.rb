class AddSlugToInstallations < ActiveRecord::Migration[6.0]
  def change
    add_column :installations, :slug, :string
    add_index :installations, :slug, unique: true
  end
end
