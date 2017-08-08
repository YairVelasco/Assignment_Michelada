class ProductosController < ApplicationController
	#Methods to execute when routed
	def index
		@productos = Producto.all
		@marcas = Marca.all

		#@tag = Tag.find(params[:id]) 
  	#@destinations = @tag.destinations
	end

	def show 
		@producto = Producto.find(params[:id])  
	end

	def new
		@producto = Producto.new
		@marcas = Marca.all
	end

	def create
		@producto = Producto.new(producto_params)
		if @producto.save 
			redirect_to '/productos'
		else
			render 'new'
		end
	end

	def update
		@producto = Producto.find(params[:id])
		if @producto.update(producto_params)
			#Change this if I want to go somewhere else
			redirect_to @producto
		else
			render 'edit'
		end
	end

	private
		def producto_params
			params.require(:producto).permit(:name,:description,:price)
		end


end
