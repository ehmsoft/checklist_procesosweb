class Ciudad < ActiveRecord::Base
  attr_accessible :departamento, :nombre
  validates :nombre, presence: {message: "No puede estar en blanco" } #Solo es obligatorio el nombre.
end
