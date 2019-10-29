class CreateSculptures < ActiveRecord::Migration[6.0]
  def change
    create_table :sculptures do |t|
      t.string :title
      t.text :description
      t.string :credit
      t.string :copyright

      t.timestamps
    end
  end
end
