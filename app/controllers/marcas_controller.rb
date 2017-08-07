class MarcasController < ApplicationController

	#Methods to execute when routed
	def index
		@marcas = Marca.all
	end

	def show 
		@marca = Marca.find(params[:id]) 
		@productos = @marca.productos 
	end

	def new
		@marca = Marca.new
	end

	def create
		@marca = Marca.new(marca_params)
		if @marca.save 
			redirect_to '/marcas'
		else
			render 'new'
		end
	end

	def update
		@marca = Marca.find(params[:id])
		if @marca.update(marca_params)
			#Change this if I want to go somewhere else
			redirect_to @marca
		else
			render 'edit'
		end
	end

	private
		def marca_params
			params.require(:marca).permit(:name)
		end

end
