class CuentaBancaria
    attr_accessor :nombre_de_usuario, :numero_de_cuenta, :vip
    
    def initialize(nombre_de_usuario, numero_de_cuenta, vip=0)
        if numero_de_cuenta.digits.count != 8
            raise 'RangeError: error numero de cuenta, cantidad de digitos esperada: 8'
        end
        @nombre_de_usuario = nombre_de_usuario
        @numero_de_cuenta = numero_de_cuenta
        @vip = vip
    end

    #cambio por tener una variable con ese nombre
    def account_number
        "#{@vip}-#{@numero_de_cuenta}"
    end


end

cuenta = CuentaBancaria.new('negro', 59689493)
puts cuenta.account_number