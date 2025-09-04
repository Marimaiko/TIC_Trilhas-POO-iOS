import Foundation

print("Aula 4 de Swift!!")

class Animal {
    let nome: String
    var idade: Int

    init(nome: String, idade: Int) {
        self.nome = nome
        self.idade = idade
    }

    func dormir() {
        print("\(self.nome) tá dormindo")
    }

    public func som() {
        print("miau?")
    }
}


class Cachorro: Animal {
    var raca: String

    init(raca: String, nome: String) {
        self.raca = raca
        super.init(nome: nome, idade: 1) 
    }

    override func som() {
        print("auu")
        
    }
}

var doguinho = Cachorro(raca: "husky", nome: "sky")

print("\(doguinho.nome), \(doguinho.raca),\(doguinho.idade)")


class Veiculo {
    var marca: String
    var ano: Int

    init(marca: String, ano: Int) {
        self.marca = marca
        self.ano = ano
    }

    func apresentar() {
        print("\(self.marca), \(self.ano)")
    }

    func detalhes() {
        print("bla bla bla...")
        
    }
}

class Carro: Veiculo {
    var portas: Int

    init(portas: Int, marca: String, ano: Int) {
        self.portas = portas
        super.init(marca: marca, ano: ano)
    }

}

var car = Carro(portas: 4, marca: "kia", ano: 2000)
car.portas = 4
car.apresentar()


class Moto: Veiculo {
    var cili: Int

    init(cili: Int) {
        self.cili = cili
    }

    override func detalhes() {
    print("é moto de \(self.cili)")
    }
}

var x:[Veiculo] = [Carro(portas: 3, marca: "dmsk", ano: 2000), Moto(cili: 54)]

