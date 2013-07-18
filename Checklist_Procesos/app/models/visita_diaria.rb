class VisitaDiaria < ActiveRecord::Base
  belongs_to :juzgado
  belongs_to :ronda
  attr_accessible :edictos, :estados, :fecha, :n_edictos, :n_estados, :n_traslados, :nada, :traslados, :juzgado_id, :notas
  validates :fecha, presence: {message: "no puede estar en blanco" }
  validates :juzgado_id, presence: {message: "no puede estar en blanco" }
end
