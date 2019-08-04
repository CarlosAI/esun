class PaginaController < ApplicationController

	skip_before_action :verify_authenticity_token
	layout 'panel'
	
	def index
	end

	def consulta
	end

	def eliminar_user
		@usuarios = User.all
	end

	def informes
	end

	def nuevo_alumno

	end
	def nuevo_user
	end

	def eliminar_alumno
		@alumnos = Student.all
	end

	def crear_alumno
		puts params
		nombre =  params["nombre"].to_s + " " + params["app1"].to_s + " " + params["app2"].to_s
		nuevo = Student.new
		nuevo.nombre = nombre
	    nuevo.genero = params["genero"]
	    nuevo.domicilio = params["domicilio"]
	    nuevo.nombre_padre = params["nombre_padre"]
	    nuevo.nombre_madre = params["nombre_madre"]
	    nuevo.telefono_contacto = params["contacto"]
	    nuevo.tel_padre = params["tel1"]
	    nuevo.tel_madre = params["tel2"]
	    nuevo.save
	end

	def crear_user
		usuario = User.new
		usuario.nombre = params["nombre"]
		usuario.password = params["pass"]
		usuario.save
	end

	def eliminar_a_alumno
		alumno = Student.find(params["el_id"])
		if alumno.present?
			alumno.delete
		end
	end

	def eliminar_a_user
		usuario = User.find(params["el_id"])
		if usuario.present?
			usuario.delete
		end
	end

	def verificar
		salida = 0
		if params["pass"].present? && params["user"].present?
			usuario = User.where("nombre"=>params["user"], "password"=>params["pass"]).take
			if usuario.present?
				salida = 200
			else
				salida = 404
			end
		else
			salida = 400
		end
		respond_to do |format|
	      format.json { render json: salida}
	    end
	end

	def consulta_alumno
		salida = []
		alumno = Student.where("nombre LIKE ?", "%#{params["nombre"]}%").take
		if alumno.present?
			salida << 200
			salida << alumno.nombre
			salida << alumno.created_at
			salida << alumno.genero
			salida << alumno.domicilio
			salida << alumno.nombre_padre
			salida << alumno.nombre_madre
			salida << alumno.telefono_contacto
		else
			salida << 400
		end

		respond_to do |format|
	      format.json { render json: salida}
	    end
	end
end
