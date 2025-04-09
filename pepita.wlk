object pepita {
	var energia = 100
	
	method comer(comida) {
		energia = energia + comida.energiaQueAporta()
	}
	
	method energiaNecesariaParaVolar(distancia){
		return distancia + 10
	}
	method validadVolar(distancia){
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
	
	method energia() {
		return energia
	}
		
	method comer(comida) {
		energia = energia + comida.energiaQueAporta() / 2
	}
		
	method volar(distancia) {
		self.validarVolar(distancia)
		energia = energia - 20 - 2*distancia
	}

	method energiaNecesariaParaVolar(distancia){
		return 20 + 2*distancia
	}
	method validadVolar(distancia){
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
}

