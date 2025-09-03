import Foundation

print("Aula 3 de Swift!!")

class Carro {
    private(set) var marca: String
    private(set) var modelo: String
    private(set) var valor: Int
    var velocidade: Int

    init(marca: String, modelo: String, vel: Int, valor: Int) {
        self.marca = marca
        self.modelo = modelo
        self.velocidade = vel
        self.valor = 500
    }

    func acelera() {
        velocidade += 1
    }

    func frear() {
        velocidade -= 1
    }

    private func setValor(valor: Int) {
            self.valor = valor
    }

    func mudaValor(x : Int) {
        if valor <= 100 {
            setValor(valor: x)
        }
    }
}

var car = Carro(marca: "String", modelo: "Strig", vel: 5, valor: 200)
car.acelera()
car.acelera()
car.mudaValor(x: 60)
print(car.velocidade)
print(car.valor)