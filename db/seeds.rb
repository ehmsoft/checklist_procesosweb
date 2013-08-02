# -*- coding: utf-8 -*-
#Crear Ciudades
pereira = Ciudad.create!(nombre: "Pereira", departamento: "Risaralda")
dosq = Ciudad.create!(nombre: "Dosquebradas", departamento: "Risaralda")
santa = Ciudad.create!(nombre: "Santa Rosa de Cabal", departamento: "Risaralda")


#Pereira
(1..5).each { |x| Juzgado.create!(nombre: "Juzgado 0#{x} Civil del Circuito", ciudad_id: pereira.id) }
(1..8).each { |x| Juzgado.create!(nombre: "Juzgado 0#{x} Civil Municipal", ciudad_id: pereira.id) }
(1..2).each { |x| Juzgado.create!(nombre: "Juzgado 0#{x} Civil Municipal de Descongestión", ciudad_id: pereira.id) }
(1..4).each { |x| Juzgado.create!(nombre: "Juzgado 0#{x} de Familia", ciudad_id: pereira.id) }
(1..5).each { |x| Juzgado.create!(nombre: "Juzgado 0#{x} Laboral", ciudad_id: pereira.id) }
(1..2).each { |x| Juzgado.create!(nombre: "Juzgado 0#{x} Laboral de Descongestión", ciudad_id: pereira.id) }
(1..4).each { |x| Juzgado.create!(nombre: "Juzgado 0#{x} de Pequeñas Causas", ciudad_id: pereira.id) }
(1..4).each { |x| Juzgado.create!(nombre: "Juzgado 0#{x} Laboral Adjunto 01", ciudad_id: pereira.id) }
(1..5).each { |x| Juzgado.create!(nombre: "Juzgado 0#{x} Administrativo de Descongestión", ciudad_id: pereira.id) }
Juzgado.create!(nombre: "Sala Laboral Tribunal Superior del Distrito Judicial", ciudad_id: pereira.id)
Juzgado.create!(nombre: "Sala Civil-Familia Tribunal Superior del Distrito Judicial", ciudad_id: pereira.id)
(1..4).each { |x| Juzgado.create!(nombre: "Juzgado 0#{x} Administrativo", ciudad_id: pereira.id) }
Juzgado.create!(nombre: "Tribunal Contencioso Administrativo de Risaralda", ciudad_id: pereira.id)

#Dosquebradas
(1..3).each { |x| Juzgado.create!(nombre: "Juzgado 0#{x} Civil Municipal", ciudad_id: dosq.id) }
Juzgado.create!(nombre: "Juzgado 01 Civil del Circuito", ciudad_id: dosq.id)
Juzgado.create!(nombre: "Juzgado 01 Laboral", ciudad_id: dosq.id)
Juzgado.create!(nombre: "Juzgado 01 de Familia", ciudad_id: dosq.id)

#Crear Usuarioes 
torres = Usuario.new(email: "andres.torres@ehmsoft.com")
torres.password = "12345678"
torres.save!

harold = Usuario.new(email: "harold.sanchez@ehmsoft.com")
harold.password = "12345678"
harold.save!

esteban = Usuario.new(email: "esteban.santa@ehmsoft.com")
esteban.password = "12345678"
esteban.save!

luisa = Usuario.new(email: "luisa.arrubla@ehmsoft.com")
luisa.password = "12345678"
luisa.save!