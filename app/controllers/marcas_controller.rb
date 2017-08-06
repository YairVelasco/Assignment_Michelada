class MarcasController < ApplicationController
	def index
		@marcas = Marca.all
	end
end
