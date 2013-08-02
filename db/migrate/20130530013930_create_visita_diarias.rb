class CreateVisitaDiarias < ActiveRecord::Migration
  def change
    create_table :visita_diarias do |t|
      t.references :juzgado
      t.boolean :estados, :default => false
      t.integer :n_estados, :default => 0
      t.boolean :edictos, :default => false
      t.integer :n_edictos, :default => 0
      t.boolean :traslados, :default => false
      t.integer :n_traslados, :default => 0
      t.boolean :nada, :default => false
      t.references :ronda
      t.date :fecha

      t.timestamps
    end
    add_index :visita_diarias, :juzgado_id
    add_index :visita_diarias, :ronda_id
  end
end
