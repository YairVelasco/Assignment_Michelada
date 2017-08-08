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
		flash[:alert] = ''
		# if @producto.name.to_s == ''
		# 	flash[:alert] = "You have to add a name for the product"
		# 	render 'new' 	
		# els
		if @producto.save
			redirect_to '/productos'
			#flash[:notice] = "You have to add a name for the product" 
		else
			render 'new'
		end
	end

	def edit 
  		@producto = Producto.find(params[:id])
  		@marcas = Marca.all 
	end

	def update
		@producto = Producto.find(params[:id])
		if @producto.update(producto_params)
			#Change this if I want to go somewhere else
			redirect_to '/productos'
		else
			render 'edit'
		end
	end

	def destroy
		@producto = Producto.find(params[:id])
		if  producto.destroy
			flash[:success] = "User deleted"
			redirect_to '/productos'
		else
			flash[:failure] = "User couldn't be deleted"
		end
	end

	private
		def producto_params
			params.require(:producto).permit(:name,:description,:price,:marca_id)
		end


end
