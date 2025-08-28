object tom {
  var energia = 50

  method comer(unRaton) {
    //Esto lo hace para topear el maximo a 100 la asignacion de energia 
    //pero el enunciado no decia nada.
    energia = 1000.min(energia + 12 + unRaton.peso())
    unRaton.serComido()
  }

  method correr(distancia) {
    energia = 0.max(energia - distancia/2)
  }

  method velocidadMaxima() {
    return 5 + energia/10
  }

  //Parte 2
  method puedeCorrer(distancia) {
    //Puede cazar si tiene energia suficiente para recorrer esa distancia
    //Es decir, la energía que gastaría en correr la distancia
    //es menor a su propia energia.
    //DUDA: No podria correr siempre?.
    return distancia/2 < energia
  }
  
  method puedeCazar(unaDistancia) {
    return self.puedeCorrer(unaDistancia)
  }

  method cazar(unRaton, unaDistancia) {
    if (self.puedeCazar(unaDistancia)) {
      self.correr(unaDistancia)
      self.comer(unRaton)
    }
  }

}

object jerry {
  var edad = 2
  
  method cumplirAnios() {
    edad = edad + 1
  }
  //method edad(nuevaEdad) {edad = nuevaEdad} //Setter
  method peso() {
    return edad * 20
  }
  method serComido() {}
}

object nibbles {
  method peso() {
    return 35
  }
  method serComido() {}
}

// Inventar otro ratón

object bizcocho {
  var estaSeco = true
  method peso() {
    if (estaSeco) {return 20}
    else {return 30}
  }

  method serComido() {
    estaSeco = true
  }
}