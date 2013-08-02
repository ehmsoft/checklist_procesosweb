class CreateRondas < ActiveRecord::Migration
  def change
    create_table :rondas do |t|
      t.date :fecha
      t.references :usuario

      t.timestamps
    end
    add_index :rondas, :usuario_id
  end
end
