object alianza {
  const property ejercito = []

  method reclutar(guerrero) {
    if (guerrero.salud() > 50 and guerrero.poder() >= 25){
        ejercito.add(guerrero)
    }
  }
  
  method entrenar(guerrero) {
    guerrero.entrenar()
  }

  method entrenarEjercito() {
    ejercito.forEach({ guerrero => self.entrenar(guerrero) })
  }

  method tamanioEjercito() = ejercito.size()

  method poderDelEjercito() = ejercito.sum({ guerrero => guerrero.poder() + 25 }) 

  method invencible() = self.ejercitoPoderoso() or self.tieneCampeon()

  method ejercitoPoderoso() = ejercito.all({
    guerrero => guerrero.poder() > 50 
    })

  method tieneCampeon() = ejercito.any( {
    guerrero => guerrero.esCampeon()
  })

  method guerrerosDebiles(unValor) {
    return ejercito.filter({
      guerrero => guerrero.salud() <= unValor
    })
  }

  method ganarBatalla(unValor) {
    return self.poderDelEjercito() > unValor
  }
  
  method pocaSaludMuchoPoder() {
    return self.guerreroConMenosSalud().poder() > self.guerreroMasMenosSalud().poder()
  }

  method guerreroConMenosSalud() {
    return ejercito.min( { guerrero=> guerrero.salud()})
  }

  method guerreroMasMenosSalud() {
    return ejercito.max( { guerrero=> guerrero.salud()})
  }

  method nombresCampeones() {
    return ejercito.filter({guerrero=> guerrero.esCampeon()}).map( {g=> g.nombre()})
  }
}
