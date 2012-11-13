# archivo: tc_rps.rb tc = test case

require "rps"
require "test/unit"

class TestRockPaperScissors < Test::Unit::TestCase # < significa herencia de la de la derecha
	def setup
	end

	def teardown #depsués de cada prueba
	end

	def test_wrong_play # *args significa 1 o más argumentos
		assert_raise( ScriptError ) { RockPaperScissors.play('fire' } #mira si el bloque dado lanza una excepción
	end
	
	def test_variety #falta algo aquí
		answers = []
		20.times do
			answers.push RockPaperScissors.throw
		end
	end
end

