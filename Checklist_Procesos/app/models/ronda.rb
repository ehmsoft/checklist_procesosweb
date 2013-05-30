class Ronda < ActiveRecord::Base
  belongs_to :usuario
  attr_accessible :fecha
  validates :fecha, presence: {message: "no puede estar en blanco" }
end
