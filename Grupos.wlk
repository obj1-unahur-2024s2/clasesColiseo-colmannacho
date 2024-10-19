class GrupoDePeleadores {
  const nombre
  const peleadores = []
  var peleasParticipadas = 0
  method agregarPeleador(unPeleador) {
    peleadores.add(unPeleador)
  }
  method sacarPeleador(unPeleador) {
    peleadores.remove(unPeleador)
  }
  method campeonElegido() {
    peleadores.filter({c => c.vida() > 0}).peleadorMasFuerte()
  }
  method peleadorMasFuerte() = peleadores.max({c => c.poderAtaque()})
  
  method combatirContra(otroGrupo) {
    
    
    peleasParticipadas = peleasParticipadas + 1
  }

}