class Ronda < ActiveRecord::Base
  belongs_to :usuario
  has_many :visita_diarias
  attr_accessible :fecha
  validates :fecha, presence: {message: "no puede estar en blanco" }
end
