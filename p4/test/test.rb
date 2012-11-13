# File:  test.rb
#!/bin/env ruby
# encoding: utf-8

require "lib/radio.rb"
require "test/unit"

class TestPerimetro < Test::Unit::TestCase

     def test_simple  #assert_equal( expected, actual, failure_message = nil )
	 #circulo = Radio.new(75.36)
         assert_equal(12, Radio.new(75.36).calculo) #mira si los 2 primeros argumentos son iguales, 3er argumento sería una string con mensaje de error
     end

     def test_typecheck
         assert_raise( RuntimeError ) { Radio.new('a') } #mira si el bloque dado lanza una excepción
     end  
     
     def test_negative
         assert_raise( ArgumentError ) { Radio.new(-3) }
	 end

end
