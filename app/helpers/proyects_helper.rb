module ProyectsHelper

	def movimientos(project)
		movimientos = project.movements
		datos = Hash.new

		datos[:rendido_beneficiario] = 0
		datos[:rendido_innova] = 0
		datos[:aprobado_beneficiario] = 0
		datos[:aprobado_innova] = 0

		movimientos.each do |movimiento|

			datos[:rendido_beneficiario] += movimiento.rendido_beneficiario unless movimiento.rendido_beneficiario.nil?
			datos[:rendido_innova] += movimiento.rendido_innova unless movimiento.rendido_innova.nil?
			datos[:aprobado_beneficiario] += movimiento.aprobado_beneficiario unless movimiento.aprobado_beneficiario.nil?
			datos[:aprobado_innova] += movimiento.aprobado_innova unless movimiento.aprobado_innova.nil?
		end
	
		return datos
	end

end
