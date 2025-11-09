$(document).ready(function(){
	window.addEventListener("message",function(event){

		$(".kdsakdksa").on("keyup", function () {
			let search = $(this).val().toLowerCase();
			$(".nome-carro").filter(function () {
				$(this).closest(".item-cars").toggle($(this).text().toLowerCase().indexOf(search) > -1)
			});	
		});

		switch(event.data.action){
			case "showMenu":

				var item = event.data

				$("#Pagina-Inicio").show(0);
				$("#pagina-lista").hide(0);
				$("#pagina-viewcar").hide(0);

				$("#linkloja").html(item.link_loja);
				$("#nome_player").html(item.nome_player);
				$(".imagem-personagem").attr(`src`,`${item.imagem_player}` );
				$("body").fadeIn(800);

			break;

			case "hideMenu":
				$("body").fadeOut();		
			break;
		}
		
	});

	document.onkeyup = function(data) {
		if (data.which == 27){
			$.post("http://wnConce/close");
		}else if(data.key == "Enter"){
			if($("#chat-input").val() != "" && $("#chat-input").val() != " " ){
				enviarChat()
			}
		}
	};
});

function closeNui(){
	$.post("http://wnConce/close");
}

function Sfechar(){
	$("#pagina-viewcar").hide();
	$("#pagina-lista").hide();
	$("#Pagina-Inicio").hide();
}

function trocarPagina(tipo){

	Sfechar()

    $("#alugarcarro").hide(0);
    $("#alugarcarro1").hide(0);
    $("#alugarcarro2").hide(0);


	if(tipo == 'inicio'){
		$("#Pagina-Inicio").fadeIn(700);
	}

	if(tipo == 'sedan'){
        $("#alugarcarro").show(0);
		$('.overflow-cars').empty()
		listCarros('Sedan')
		$("#pagina-lista").fadeIn(700);
	}

	if(tipo == 'suv'){
        $("#alugarcarro").show(0);
		$('.overflow-cars').empty()
		listCarros('Suv')
		$("#pagina-lista").fadeIn(700);
	}

	if(tipo == 'esportivos'){
        $("#alugarcarro").show(0);
		$('.overflow-cars').empty()
		listCarros('Esportivos')
		$("#pagina-lista").fadeIn(700);
	}

	if(tipo == 'motos'){
        $("#alugarcarro").show(0);
		$('.overflow-cars').empty()
		listCarros('Motos')
		$("#pagina-lista").fadeIn(700);
	}

	if(tipo == 'dinheirovip'){
        $("#alugarcarro").show(0);
		$('.overflow-cars').empty()
		listCarros('dinheirovip')
		$("#pagina-lista").fadeIn(700);
	}

	if(tipo == 'alugados'){
        $("#alugarcarro1").show(0);
        $("#alugarcarro2").show(0);
		$('.overflow-cars').empty()
		listCarros('Alugados')
		$("#pagina-lista").fadeIn(700);
	}

	if(tipo == 'exclusivos'){
        $("#alugarcarro1").show(0);
        $("#alugarcarro2").show(0);
		$('.overflow-cars').empty()
		listCarros('Exclusivos')
		$("#pagina-lista").fadeIn(700);
	}


	if(tipo == 'baby'){
        $("#alugarcarro1").show(0);
        $("#alugarcarro2").show(0);
		$('.overflow-cars').empty()
		listCarros('Baby')
		$("#pagina-lista").fadeIn(700);
	}

	if(tipo == 'possuidos'){
		$('.overflow-cars').empty()
		listPossuidos('Possuidos')
		$("#pagina-lista").fadeIn(700);
	}

}

function listPossuidos(tipo){
	$("#categoriaid").html(tipo);
    $.post("http://wnConce/consultCarrosList",JSON.stringify({lista : tipo}),(data) => {
		let consultCarros = data.consultCarros.sort((a,b) => (a.k > b.k) ? 1: -1);
		$('.overflow-cars').empty()
		consultCarros.forEach((key,value) => {

			if (key.tax == "atrasada"){
				$('.overflow-cars').prepend(`

				<div class="item-cars" onclick="vendercarro(this)" data-link="${key.link}" data-k="${key.k}">
					<img class="imagem-carro" src="${key.link}/${key.k}.png" onerror="if (this.src != 'images/carroinvalido.png') this.src = 'images/carroinvalido.png';" alt="">
					<div class="nome-carro"><taxaatrasada>Taxa Atrasada</taxaatrasada> ${key.carro}</div>
					<div class="preço-carro"><i class="fa-duotone fa-boxes fa-beat iconPreco"></i>${key.bau} kg</div>
				</div>

			`)
			} else {
				$('.overflow-cars').prepend(`

				<div class="item-cars" onclick="vendercarro(this)" data-link="${key.link}" data-k="${key.k}">
					<img class="imagem-carro" src="${key.link}/${key.k}.png" onerror="if (this.src != 'images/carroinvalido.png') this.src = 'images/carroinvalido.png';" alt="">
					<div class="nome-carro"><taxapaga>Taxa Paga</taxapaga> ${key.carro}</div>
					<div class="preço-carro"><i class="fa-duotone fa-boxes fa-beat iconPreco"></i>${key.bau} kg</div>
				</div>

			`)
			}
		});
    });
}

function listCarros(tipo){
	$("#categoriaid").html(tipo);
    $.post("http://wnConce/consultCarrosList",JSON.stringify({lista : tipo}),(data) => {
		let consultCarros = data.consultCarros.sort((a,b) => (a.k > b.k) ? 1: -1);
		$('.overflow-cars').empty()
		consultCarros.forEach((key,value) => {
			tata = "azul"
			if (key.estoque == 0){
				tata = "vermelho"
			} else if(key.estoque < 4) {
				tata = "amarelo"
			}

            if (key.tipo == "Alugados" || key.tipo == "Exclusivos" || key.tipo == "Baby"){
                $('.overflow-cars').prepend(`

                <div class="item-cars" onclick="verCarro(this)" data-link="${key.link}" data-k="${key.k}" data-link="${key.link}" data-seguro="${key.seguro}" data-carro="${key.carro}" data-bau="${key.bau}" data-valor="${key.valor}" data-valor2="${key.valor2}" data-tipo="${key.tipo}">
                    <img class="imagem-carro" src="${key.link}/${key.k}.png" onerror="if (this.src != 'images/carroinvalido.png') this.src = 'images/carroinvalido.png';" alt="">
                    <div class="nome-carro"><ss class="${tata}">${key.estoque}</ss> ${key.carro}</div>
                    <div class="preço-carro"><i class="fa-duotone fa-tags fa-beat iconPreco"></i>${key.valor} Gemas</div>
                    <div class="kg-carro"><i class="fa-duotone fa-boxes fa-beat iconPreco"></i>${key.bau} kg</div>
                </div>
    
                `)

            } else {
                $('.overflow-cars').prepend(`

                <div class="item-cars" onclick="verCarro(this)" data-link="${key.link}" data-k="${key.k}" data-link="${key.link}" data-seguro="${key.seguro}" data-carro="${key.carro}" data-bau="${key.bau}" data-valor="${key.valor}" data-valor2="${key.valor2}" data-tipo="${key.tipo}">
                    <img class="imagem-carro" src="${key.link}/${key.k}.png" onerror="if (this.src != 'images/carroinvalido.png') this.src = 'images/carroinvalido.png';" alt="">
                    <div class="nome-carro"><ss class="${tata}">${key.estoque}</ss> ${key.carro}</div>
                    <div class="preço-carro"><i class="fa-duotone fa-tags fa-beat iconPreco"></i>${key.valor} $</div>
                    <div class="kg-carro"><i class="fa-duotone fa-boxes fa-beat iconPreco"></i>${key.bau} kg</div>
                </div>
    
                `)
            }
		});
    });
}

function vendercarro(data){
	$.post("http://wnConce/close");
	$.post("http://wnConce/venderCarro",JSON.stringify({
		carro : data.dataset.k,
	}), (data) =>{ 
		if(data.retorno == 'done') {
	
		} 
	});
};

function verCarro(data){
	$(".disposi-carro").attr(`src`, ""+ data.dataset.link + "" + data.dataset.k + ".png").on("error", function() {
		if (this.src !== 'images/carroinvalido.png') {
			this.src = 'images/carroinvalido.png';
		}
	});

	
	$("#carroDKsadask").html(data.dataset.carro);
	$("#Tipodsakds").html(data.dataset.tipo);
	$("#bauQuantidade").html(data.dataset.bau);
	$("#valorSeguro").html(data.dataset.seguro + ' $');
	if(data.dataset.tipo == "Alugados" || data.dataset.tipo == "Exclusivos" || data.dataset.tipo == "Baby"){
		$(".Kdsads").html(data.dataset.valor + ' Gemas');
	} else {
		$(".Kdsads").html(data.dataset.valor + ' $');
	}
	$("#pagina-lista").hide();
	$.post("http://wnConce/verCarros",JSON.stringify({
		carro : data.dataset.k,
	}), (data) =>{ 
		if(data.retorno == 'done') {
	
			$("#rua").html(data.street);
			$("#pagina-viewcar").fadeIn(700);
		} 
	});
};


function testDrive(){
	$.post("http://wnConce/testeDrive");
}

function comprarCarro(){
	let cor = $("#color1").val();
	const red = parseInt(cor.substring(1, 3), 16);
	const green = parseInt(cor.substring(3, 5), 16);
	const blue = parseInt(cor.substring(5, 7), 16);
	$.post("http://wnConce/comprarCarro",JSON.stringify({
		red:red,
		green:green,
		blue:blue
	}))
}

function alugarcarro(){
	let cor = $("#color1").val();
	const red = parseInt(cor.substring(1, 3), 16);
	const green = parseInt(cor.substring(3, 5), 16);
	const blue = parseInt(cor.substring(5, 7), 16);
	$.post("http://wnConce/alugarcarro",JSON.stringify({
		red:red,
		green:green,
		blue:blue
	}))
}

function comprarCarro3(){
	let cor = $("#color1").val();
	const red = parseInt(cor.substring(1, 3), 16);
	const green = parseInt(cor.substring(3, 5), 16);
	const blue = parseInt(cor.substring(5, 7), 16);
	$.post("http://wnConce/comprarCarro2",JSON.stringify({
		red:red,
		green:green,
		blue:blue
	}))
}
