class CreateJuzgados < ActiveRecord::Migration
  def change
    create_table :juzgados do |t|
      t.string :nombre
      t.string :direccion
      t.references :ciudad

      t.timestamps
    end
    add_index :juzgados, :ciudad_id
  end
end
