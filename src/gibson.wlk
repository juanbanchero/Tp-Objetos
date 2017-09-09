object gibson {
	var sana = true
	var precio = 15
	method esMaltratada() {
		sana = false
		precio = 5
	}
	method precio() {
		return precio
	}
	method estaSana() {
		return sana
	}
}