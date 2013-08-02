class AddNotasToVisitaDiarias < ActiveRecord::Migration
  def change
    add_column :visita_diarias, :notas, :text
  end
end
