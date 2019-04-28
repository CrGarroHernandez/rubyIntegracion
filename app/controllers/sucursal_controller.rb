class SucursalController < ApplicationController
	def index
		@sucursals = Sucursal.all
	end

	def new
		#abort params.inspect
		if(params.has_key?(:id))
			abort 'ggmangg'
		else
			@sucursal = Sucursal.new
		end
	end

	def create
		@sucursal = Sucursal.new(sucursal_params);
		if @sucursal.save
			redirect_to sucursals_path
		else
			render :new
		end
	end

	def edit
		@sucursal = Sucursal.find(params[:id])
	end

	def update
		@sucursal = Sucursal.find(params[:id])
		if @sucursal.update(sucursal_params)
			flash[:success] = "Micropost deleted"
			redirect_to sucursals_path

		else

			flash.now[:danger] = "Email address not found"
			render :edit
		end
	end

	def delete
		@sucursal = Sucursal.find(params[:id])
		@sucursal.destroy
		redirect_to sucursals_path
	end

	private
		def sucursal_params
			params.require(:sucursal).permit(:rut, :nombre, :nro_fiscal, :fono1, :fono2, :giro_id, :razon_social, :direccion, :numero, :descripcion )
		end

end