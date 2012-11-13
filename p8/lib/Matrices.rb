class Matrices
	attr_accessor :nfilas, :ncols, :filas, :cols, :matriz
	
	def initialize(fils, colus)
        @nfilas, @ncols = fils, colus
        @matriz = Array.new(fils) { Array.new(colus) }
        for numfila in 0..nfilas-1
			for numcol in 0..ncols-1
				@matriz[numfila][numcol] = gets.to_i
			end
        end
    end 	
    
    def [](x, y)
		@matriz[x][y]
    end

	def []=(x, y, valor)
		@matriz[x][y] = valor
    end
    
    def mostrar
		for numfila in 0..nfilas-1
			for numcol in 0..ncols-1
				print "#{@matriz[numfila][numcol]} "
			end
			puts
        end
    end
    
    def getxy(x, y)
		@matriz[x][y]
    end
    
    def +(o)
		if self.ncols == o.ncols and self.nfilas == o.nfilas
			for numfila in 0..nfilas-1
				for numcol in 0..ncols-1
					@matriz[numfila][numcol] += o.getxy(numfila, numcol)
				end
			end
			self.mostrar
		else
			puts "no se pueden sumar"
		end
    end

end

M1 = Matrices.new(2, 2)
M2 = Matrices.new(2, 2)
M1 + M2



