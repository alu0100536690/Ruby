require "RockPaperScissors"

describe RockPaperScissors do
  before :each do
    @rps = RockPaperScissors.new()
  end
  
  it "Debe existir una tirada para el humano" do
      @rps.player.should == :piedra
  end
   
  it "Debe existir una tirada para la maquina" do
      @rps.computer.should == :papel
  end
  
  it "Debe existir una lista de tiradas varias" do
      @rps.tiradas.should == [:piedra, :papel, :tijeras]
  end
  
  it "Debe existir una lista de jugadas posibles y quien gana" do 
    @rps.ganadoras.should == {:piedra => :tijeras,
			      :papel => :piedra,
			      :tijeras => :papel}
  end
  
  it "Se debe invocar al metodo player_throw() para recoger la tirada del humano y que esta sea valida" do
    @rps.player_throw.should == @rps.player
  end
  
  it "Se debe invocar al metodo computer_throw() para recoger la tirada de la maquina y que esta sea valida" do
    @rps.computer_throw.should == @rps.computer
  end
  
  #it "Debe existir una lista de resultados de un juego desde el punto de vista de la maquina" do
   #@rps.lista_resultados.should == @rps.computer
  #end
  
   it "ebe existir un resultado para un juego, desde el punto de vista de la máquina" do
   @rps.resultados.should == @rps.computer
  end

end
