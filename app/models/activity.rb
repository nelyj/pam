class Activity < ActiveRecord::Base
  belongs_to :proyect

  attr_accessible :description, :proyect_id, :title

  #fecha actividad, etapa_actual{ just on idea/concept, prototyping, beta, scaling operation, scaling sales}, esto deberian ser texto: need_comunications, experience, mentorship, rva, operations
  #tambien es texto: notes, numeros: nuevos usuarios, nuevos  clientes, ventas mensuales actuales, venden in more countries?{yes, no, no ventas}
  #integer: nuevos empleados chilenos, nuevos empleados extranejors, nuevos outsorcing chilenos, nuevos outsourcing extranjeros
  #Fecha de la proxima reunion

  #tabla de raice_capita|amount, date, whow, country| hitos|descripcion, fecha_comprometida, fecha_logrado, boolean logrado {si, no}| goals|lo mismo que la otra, porcentaje logrado|
end
