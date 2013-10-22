class Activity < ActiveRecord::Base
  belongs_to :proyect

  attr_accessible :description, :proyect_id, :title, :date_activity, :etapa_actual, :need_comunications, :experience, :notes, :nuevos_usuarios, :nuevos_clientes
  								:ventas_mensuales_actuales, :venden_en_mas_paises, :nuevos_empleados_chilenos, :nuevos_empleados_extranjeros, :nuevos_outsourcing_chilenos, :nuevos_outsourcing_extranjeros, :fecha_proxima_reunion
  #esto deberian ser texto: mentorship, rva, operations

  #tabla de raice_capita|amount, date, whow, country| hitos|descripcion, fecha_comprometida, fecha_logrado, boolean logrado {si, no}| goals|lo mismo que la otra, porcentaje logrado|
end

#date_activity:string etapa_actual:string{ just on idea/concept, prototyping, beta, scaling operation, scaling sales}, need_comunications:text experience:text 
#notes:text nuevos_usuarios:integer nuevos_clientes:integer ventas_mensuales_actuales:integer venden_en_mas_paises:string nuevos_empleados_chilenos:integer nuevos_empleados_extranjeros:integer 
#nuevos_outsourcing_chilenos:integer nuevos_outsourcing_extranjeros:integer fecha_proxima_reunion:string