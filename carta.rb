class Carta
    attr_accessor :numero, :pinta

    def initialize(numero, pinta)
        @numero = numero
        @pinta = pinta
    end
end

mano = []
pintas = ['C', 'D', 'E', 'T']
5.times do |i| 
    pinta = pintas.sample
    numero = Random.rand(1..13)
    carta = Carta.new(numero, pinta)
    mano << carta
end

puts mano.inspect
