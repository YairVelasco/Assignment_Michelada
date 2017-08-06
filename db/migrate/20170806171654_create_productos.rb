class CreateProductos < ActiveRecord::Migration[5.0]
	def change
		create_table :productos do |t|
			t.string :name
			t.string :description
			t.string :price
			t.references :marca
			t.timestamps
		end
	end
end
