import alianza.*

object sableVerde {
  method poderQueOtorga() = 15
}
object sableAzul {
  method poderQueOtorga() = 25
}
object luke {
  const property nombre = "Luke Skywalker"
  var poder = 5
  var salud = 75
  var property sable = sableVerde
  
  method poder() = poder
  
  method salud() = salud
  
  method entrenar() {
    salud = salud + 25
    poder = poder + sable.poderQueOtorga()
  }

  method esCampeon() = poder >= 30 
}

object yoda {
  const property nombre = "Din Grogu"
  var poder = 50
  var salud = 30
  var usandoLaFuerza = false

  method poder() = poder
  method salud() = salud

  method entrenar(){
    if (usandoLaFuerza){
      poder = poder * 2
    }else{
      salud = salud + 25
    }
  }

  method alternar(){
    usandoLaFuerza = not usandoLaFuerza
  }

  method esCampeon() = true
}

object arturito {
  const property nombre = "R2-D2"
  var salud = 50
  var cantidadDeReparaciones = 0
  
  method poder() = 0.max(80 - cantidadDeReparaciones * 2)
  method salud() = salud

  method entrenar(){
    salud = salud + 10
    cantidadDeReparaciones += 1
  }
  method esCampeon() = cantidadDeReparaciones.even()
}

object c3po {
  const property nombre = "C-3P0"
  var capacidadReparacion = 3

  method poder() = 30
  method salud() = 80

  method entrenar() {
    capacidadReparacion += 1
  }

  method esCampeon() =  capacidadReparacion > self.poder() * 0.1

  method repararNave() {
    if (self.esCampeon()) {
      halconMilenario.mejorarBlindaje(capacidadReparacion*100)
      halconMilenario.mejorarVelocidad(capacidadReparacion*100)
    } else {
      halconMilenario.mejorarBlindaje(200)
      halconMilenario.mejorarVelocidad(200)
    }
  }
}

object halconMilenario {
  var velocidad = 500
  var blindaje = 1000

  method velocidad() = velocidad
  method blindaje() = blindaje

  method mejorarVelocidad(valor) {
    velocidad = velocidad + valor
  }

  method mejorarBlindaje(valor) {
    blindaje = blindaje + valor
  }
}
