require "Fracciones"

describe Fracciones do

	before :each do
		@fraccion = Fracciones.new(15, 5)
		@fraccion2 = Fracciones.new(15, 5)
	end

	it "Debe existir un numerador" do
		@fraccion.numerador == :numerador
	end

	it "Debe existir un denominador" do
		@fraccion.denominador == :denominador
	end

	it "Debe existir su forma reducida" do
		@fraccion.forma_reducida == :forma_reducida
	end

	it "Se debe invocar al metodo denom() para obtener el denominador" do
		@fraccion.denom == @fraccion.denominador
	end

	it "Se debe invocar al metodo num() para obtener el numerador" do
		@fraccion.num == @fraccion.numerador
	end

	it "Se debe mostar por la consola la fraccion de la forma: a/b, donde a es el numerador y b el denominador" do
		@fraccion.mostrar_fraccion.should
	end

	it "Se debe mostar por la consola la fraccion en formato flotante" do
		@fraccion.mostrar_flotante.should
	end

	it "Se debe calcular el valor absoluto de una fraccion con el metodo abs" do
		@fraccion.abs.should
	end

	it "Se debe comparar si dos fracciones son iguales con ==" do
		(@fraccion == @fraccion2).should
	end

	it "Se debe calcular el reciproco de una fraccion con el metodo reciprocal" do
		@fraccion.reciprocal.should
	end
	
	it "Se debe calcular el opuesto de una fraccion con -" do
		@fraccion.-
	end

	it "Se debe sumar dos fracciones con + y dar el resultado de forma reducida" do
	    (@fraccion + @fraccion2).should
	end
	
	it "Se debe restar dos fracciones con - y dar el resultado de forma reducida" do
	    (@fraccion - @fraccion2).should
	end
	
	it "Se debe multiplicar dos fracciones con * y dar el resultado de forma reducida" do 
		(@fraccion * @fraccion2).should
	end
	
	it "Se debe dividir dos fracciones con / y dar el resultado de forma reducida" do
		(@fraccion / @fraccion2).should
	end
	
	it "Se debe calcular el resto dos fracciones con % y dar el resultado de forma reducida" do
		(@fraccion % @fraccion2).should
	end
	
	it "Se debe de poder comprobar si una fracion es menor que otra" do
		(@fraccion < @fraccion2).should
	end
	
	it "Se debe de poder comprobar si una fracion es mayor que otra" do
		(@fraccion > @fraccion2).should
	end

	it "Se debe de poder comprobar si una fracion es menor o igual que otra" do
		(@fraccion <= @fraccion2).should
	end
	
	it "Se debe de poder comprobar si una fracion es mayor o igual que otra" do
		(@fraccion >= @fraccion2).should
	end

end
