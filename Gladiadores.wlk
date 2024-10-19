import coliseo.*
import Grupos.*
class Mirmillon {
  var arma
  var armadura
  const fuerza
  var vida = 100
  method vida() = vida
  method destreza() = 15
  method poderAtaque() = arma.ataque() + fuerza
  method defensa() = armadura.defensa() + self.destreza()
  method cambiarArma(unArma){
    arma = unArma
  }
  method cambiarArmadura(unaArmadura){
    armadura = unaArmadura
  }
  method atacar(unGladiador) {
    if(vida > 0){
        unGladiador.recibirAtaque(self.poderAtaque())
    }
  }
  method recibirAtaque_De_(danio,unGladiador) {
    vida = (vida - danio).max(0)
    self.atacar(unGladiador)
  }
  method crearGrupoCon(unGladiador) {
    const nuevoGrupo = new GrupoDePeleadores(nombre = "mirmillolandia",peleadores = [self,unGladiador])
    coliseo.agregarGrupoDePeleadores(nuevoGrupo)
  }
}

class Dimachaerus {
  const arma = []
  var destreza
  var vida = 100
  method vida() = vida
  method fuerza() = 10
  method poderAtaque() = arma.sum({c => c.ataque()}) + self.fuerza()
  method defensa() = destreza * 0.5
  method atacar(unGladiador) {
    if(vida > 0){
        unGladiador.recibirAtaque(self.poderAtaque())
        destreza = destreza + 1
    }
  }
  method recibirAtaque_De_(danio,unGladiador) {
    vida = (vida - danio).max(0)
    self.atacar(unGladiador)
  }
  method crearGrupoCon(unGladiador) {
    const nuevoGrupo = new GrupoDePeleadores(nombre = "D-12",peleadores = [self,unGladiador])
    coliseo.agregarGrupoDePeleadores(nuevoGrupo)
  }
}