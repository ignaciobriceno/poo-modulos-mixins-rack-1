class Vehicle
	def initialize(model, year)
		@model = model
		@year = year
		@start = false
	end
	def engine_start
		@start = true
	end
end
class Car < Vehicle
	@@contador = 0
	def initialize(model,year)
		super
		@@contador += 1
	end

	def self.total
		@@contador
	end

	def engine_start
		super
		puts 'El motor se ha encendido!'
	end

end
Car.new