class Juzgado < ActiveRecord::Base
  belongs_to :ciudad
  has_many :visita_diarias
  attr_accessible :direccion, :nombre, :ciudad_id
  validates :nombre, presence: {message: "No puede estar en blanco" } #Solo es obligatorio el nombre.
  validates :ciudad_id, presence: {message: "Debe escoger una" }
  
  def nombre_completo #Me devuelve el nombre completo del juzgado para evitar hacer interpolacion de strings en otros lados.
    if id == 1
      nombre 
    elsif nombre == "Tribunal Contencioso Administrativo de Risaralda"
      nombre
    else
      "#{nombre} de #{ciudad.nombre}"
    end
  end
end
