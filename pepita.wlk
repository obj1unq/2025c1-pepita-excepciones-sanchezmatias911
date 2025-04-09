
object pepita {
	var energia = 100
	
	method comer(comida) {
		energia = energia + comida.energiaQueAporta()
	}
	
	method energiaNecesariaParaVolar(distancia){
		return distancia + 10
	}
	method validarVolar(distancia){
		if(!(energia>= self.energiaNecesariaParaVolar(distancia))){
			self.error(" soy pepita y no puedo volar")
		}
	}
	method volar(distancia) {
		self.validarVolar(distancia)
		energia = energia - 10 - distancia
	}
		
	method energia() {
		return energia
	}
}
//mensaje para testear

object alpiste {
	method energiaQueAporta() {
		return 20
	}
}

object manzana {
	var madurez = 1
	const base = 5
	
	method madurez() {
		return madurez
	}
	
	method madurez(_madurez) {
		madurez = _madurez
	}
	
	method madurar() {
		self.madurez(madurez + 1)
	}
	
	method energiaQueAporta() {
		return base * madurez
	}
	
}

object pepon {
	var energia = 30
	var ultimaComida = manzana

	method energia() {
		return energia
	}

	method validarComida(comida){
		if(comida==ultimaComida){
			self.error("Ya comi esto master, dame otra cosa")
		}
	}

	method comer(comida) {
		self.validarComida(comida)
		energia = energia + comida.energiaQueAporta() / 2
		ultimaComida=comida
	}
		
	method volar(distancia) {
		self.validarVolar(distancia)
		energia = energia - 20 - 2*distancia
	}

	method energiaNecesariaParaVolar(distancia){
		return 20 + 2*distancia
	}
	method validarVolar(distancia){
		if(!(energia>= self.energiaNecesariaParaVolar(distancia))){
			self.error("sor pepon y no puedo volar")
		}
	}
	
}

object roque {
	var ave = pepita
	var cenas = 0;
	
	method ave(_ave) {
		ave = _ave
		cenas = 0
	}
	
	method alimentar(alimento) {
		ave.comer(alimento)
		cenas = cenas + 1
	}

	/*
		En el caso de las cenas, si el ave de roque no puede comer, no se ejecuta el codigo siguiente 
		que aumentaria el numero de cenas y no es necesario modificar	
	*/
}

object milena{ // solucion basica. Cambiar cuando se den colecciones en la materia

	const ave1 = pepita
	const ave2 = pepon

	method movilizar(distancia){
		self.validarVuelo(ave1,distancia)
		self.validarVuelo(ave2,distancia)
		//rompe si una no puede volar
		ave1.volar(distancia)
		ave2.volar(distancia)

	}

	method validarVuelo(ave,distancia){ //me rompe si una no puede volar
		 ave.validarVolar(distancia)
	}

}

