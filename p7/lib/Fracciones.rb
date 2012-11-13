class Fracciones
	attr_accessor :numerador, :denominador
	def initialize(num, den)
        @numerador, @denominador = num, den
    end 	

	def mostrar_fraccion
		puts "#{@numerador} / #{@denominador}"
	end

	def forma_reducida
		divisor = gcd
		numerador = @numerador / divisor
		denominador = @denominador / divisor
		puts "#{numerador} / #{denominador}"
	end
	
	def gcd #para llamarla de manera "bonita"
		gcd2(@numerador, @denominador)
	end

	def gcd2(num, den)
  		if(den > 0)
          	return gcd2(den, num % den)
  		elsif(num < 0) 
			return -num
		else 
		    return num
		end
	end
	
	def denom
		@denominador
	end
	
	def num
		@numerador
	end
	
	def mostrar_flotante
		puts @numerador.to_f / @denominador.to_f
	end
	
	def abs
		if @numerador > 0
			numerador = @numerador
		else
			numerador = -@numerador
		end
		if @denominador > 0
			denominador = @denominador
		else
			denominador = -@denominador
		end
		puts "#{numerador} / #{denominador}"
	end
	
	def ==(o)
		  return @numerador == o.num && @denominador  == o.denom
	end
	
	def reciprocal #recíproco de una fracción
		puts "#{denominador} / #{numerador}"
	end

	def +(o)
		  if(@denominador == o.denom)
			  return Fracciones.new(@numerador + o.num, o.denom).forma_reducida
		  else
		      puts "No se pueden sumar"
		  end
	end
	
	def -(*args) #IMPORTANTE!!!! uso del array de argumentos para "sobrecargar"(polimorfismo) métodos!!
		if args.size == 0
			numerador = -@denominador
			denominador = @numerador
			puts "#{numerador} / #{denominador}"
		else
		    if(@denominador == args[0].denom)
		     	  return Fracciones.new(@numerador - args[0].num, args[0].denom).forma_reducida
		    else
				  puts "No se pueden restar"
		    end
		end
	end
	
	def *(o)
		return Fracciones.new(@numerador * o.num, @denominador * o.denom).forma_reducida
	end
	
	def /(o)
		return Fracciones.new(@numerador * o.denom, @denominador * o.num).forma_reducida
	end
	
	def <(o)
		float1 = @numerador.to_f / @denominador.to_f
		float2 = o.num.to_f / o.denom.to_f
		if(float1 < float2)
			return true
		end
		false
	end
	
	def >(o)
		float1 = @numerador.to_f / @denominador.to_f
		float2 = o.num.to_f / o.denom.to_f
		if(float1 > float2)
			return true
		end
		false
	end
	
	def <=(o)
		float1 = @numerador.to_f / @denominador.to_f
		float2 = o.num.to_f / o.denom.to_f
		if(float1 <= float2)
			return true
		end
		false
	end
	
	def >=(o)
		float1 = @numerador.to_f / @denominador.to_f
		float2 = o.num.to_f / o.denom.to_f
		if(float1 >= float2)
			return true
		end
		false
	end
	
	def %(o)
		l = @numerador * o.denom
		r = @denominador * o.num
		n = l/r
		Fracciones.new( l - n * r, @denominador * o.denominador).forma_reducida
	end
	
	def <=>(other)
		#dividimos num/denom de las 2 y comparo
		self.num.to_f / self.denom <=> other.num.to_f / other.denom
		#hacer sólo un to_f (más pro)
	end
	
end


