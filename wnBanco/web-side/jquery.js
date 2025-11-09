$(document).ready(function(){
	window.addEventListener("message", function(event) {
		const data = event.data

		switch (data.action) {
			case "show":
				$("body").fadeIn(200)
				$(".background-banco").fadeIn(200)
				break
			case "hide":
				$(".background-banco").fadeOut(200)
				break
			case "updateBalance":
				$("#saldobanco").text(`R$ ${data.balance}`)
				break
			case "setName":
				$("#nome").text(`Olá, ${data.name}`)
				break
		}
	})

	document.onkeyup = function(e){
		if (e.which == 27){
			$.post("http://wnBanco/close")
			$(".background-banco").fadeOut(200)
			Format()
		}
	}

	$(document).on("click", ".botao-confirmar-format[onclick*='depositar']", function(){
		let value = parseInt($('#inputDepositarQTD').val())
		if (value > 0){
			$.post("http://wnBanco/deposit", JSON.stringify({ value }))
			$('#inputDepositarQTD').val('')
			Format()
		}
	})

	$(document).on("click", ".botao-confirmar-format[onclick*='sacar']", function(){
		let value = parseInt($('#inputSacarQTD').val())
		if (value > 0){
			$.post("http://wnBanco/withdraw", JSON.stringify({ value }))
			$('#inputSacarQTD').val('')
			Format()
		}
	})

	$(document).on("click", ".botao-confirmar-format[onclick*='transferir']", function(){
		let id = parseInt($('#inputPassaporteTransferir').val())
		let value = parseInt($('#inputTransferirQTD').val())
		if (id > 0 && value > 0){
			$.post("http://wnBanco/transfer", JSON.stringify({ id, value }))
			$('#inputPassaporteTransferir').val('')
			$('#inputTransferirQTD').val('')
			Format()
		}
	})

	$(document).on("click", ".botao-confirmar-format2", function(){
		$.post("http://wnBanco/payFines")
		Format()
	})
})

function Format(type){
	$(".format > div").hide()

	if(type == "sacar"){
		$(".format").fadeIn(200)
		$(".format-sacar").fadeIn(200)
	}
	else if(type == "depositar"){
		$(".format").fadeIn(200)
		$(".format-depositar").fadeIn(200)
	}
	else if(type == "transferir"){
		$(".format").fadeIn(200)
		$(".format-transferir").fadeIn(200)
	}
	else if(type == "multas"){
		$(".format").fadeIn(200)
		$(".format-multas").fadeIn(200)
	}
	else{
		$(".format").fadeOut(200)
		$(".format > div").fadeOut(200)
	}
}

function FormatAction(action){
	if(action == 'sacar'){
		let value = parseInt($('#inputSacarQTD').val())
		if(value > 0){
			$.post("http://wnBanco/withdraw", JSON.stringify({ value }))
			Format()
		}
	}
	else if(action == 'depositar'){
		let value = parseInt($('#inputDepositarQTD').val())
		if(value > 0){
			$.post("http://wnBanco/deposit", JSON.stringify({ value }))
			Format()
		}
	}
	else if(action == 'transferir'){
		let id = parseInt($('#inputPassaporteTransferir').val())
		let value = parseInt($('#inputTransferirQTD').val())
		if(id > 0 && value > 0){
			$.post("http://wnBanco/transfer", JSON.stringify({ id, value }))
			Format()
		}
	}
	else if(action == 'multa'){
		$.post("http://wnBanco/payFines")
		Format()
	}
}
