object olivia {
	var gradoDeConcentracion = 6
	
	method gradoDeConcentracion() {	//getter - metodo de consulta
		return gradoDeConcentracion
	}
	method recibirMasajes() {
		gradoDeConcentracion += 3
	}
	method discutir() {
		gradoDeConcentracion -= 1
	}
	method darseBanioDeVapor(){} //no tiene efecto sobre olivia
	//method gradoDeConcentracion(nuevoValor){gradoDeConcentracion = nuevoValor}	//setter - metodo de indicacion

}

object bruno {
	var esFeliz = true
	var tieneSed = false
	var peso = 55000
	
	method esFeliz() = esFeliz	//getter - metodo de consulta
	method tieneSed() = tieneSed
	method peso() = peso
	
	method recibirMasajes() {
		esFeliz = true
	}
	method darseBanioDeVapor() {
		peso -= 500
		tieneSed = true
	}
	method tomarAgua() {
		tieneSed = false
	}
	method comerFideos() {
		peso += 250
		tieneSed = true
	}
	method correr() {
		peso -= 300
	}
	method verNoticiero() {
		esFeliz = false
	}
	method estaPerfecto(){
		return esFeliz and not tieneSed and peso.between(50000, 70000)
	}
	method mediodiaEnCasa() {
		self.comerFideos() //llama metodos internos dentro del mismo objeto
		self.tomarAgua()
		self.verNoticiero()
	}
}
object ramiro{
	var nivelDeContractura = 0
	var pielGrasa = false
	
	method nivelDeContractura() = nivelDeContractura
	method pielGrasa() = pielGrasa
	
	method recibirMasajes() {
		nivelDeContractura = 0.max(nivelDeContractura - 2)
	}
	method darseBanioDeVapor() {
		pielGrasa = false
	}
	method comerBigMc() {
		pielGrasa = true
	}
	method bajarAFosa() {
		pielGrasa =true
		nivelDeContractura += 1
	}
	method jugarPadel() {
		nivelDeContractura += 3
	}
	method diaDeTrabajo() {
		self.bajarAFosa()
		self.comerBigMc()
		self.bajarAFosa()
	}
}