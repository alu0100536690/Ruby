class Radio

   def initialize (num)
	   if(num.is_a? Numeric)# es un numero
		   if(num >= 0)
			   @perimetro = num
			   @pi = 3.14   
		   else
			   raise ArgumentError
		   end
	   else
		   raise RuntimeError
	   end
   end

   def calculo
       @@radio = (@perimetro)/(@pi*2)
       #puts "El perimetro es: #{@perimetro}"
       #puts "El radio es: #{@@radio}"
       @@radio
   end
       
end

#main
      perimetro = ARGV[0].to_f
      if perimetro == 0	
	  perimetro = 75.36
      end
      calc = Radio.new(perimetro)
      calc.calculo


