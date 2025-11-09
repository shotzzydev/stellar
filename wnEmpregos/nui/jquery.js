
var cargo_player_acessando = "nada"
var filtar_por = "id"

$(document).ready(function(){
	window.addEventListener("message",function(event){

		switch(event.data.action){
			case "showMenu":
				$("#nome-player").html(event.data.nome);
				$("#passaporte-player").html(event.data.passaporte);
				$(".img-pero").attr(`src`,`${event.data.imagem}` );
				console.log(event.data.imagem_emprego)
				$(".img-emprego").attr(`src`,`${event.data.imagem_emprego}` );
				$(".tipo-emprego").html(event.data.empregoAtual);
				getTutorial()
				$("body").fadeIn(800);
			break;

			case "hideMenu":
				$("body").fadeOut(800);
			break;
		}
		
	});

	document.onkeyup = function(data) {
		if (data.which == 27){
			$.post("http://wnEmpregos/close");
		}
	};
});

function closeNui(){
	$.post("http://wnEmpregos/close");
}


function iniciar(data){
	$.post("http://wnEmpregos/close");
	$.post("http://wnEmpregos/iniciar",JSON.stringify({
	
	}), (data) =>{ 
		if(data.retorno == 'done') {
			$.post("http://wnEmpregos/close");
		} 
	});
};

const getTutorial = () => {
	$.post("http://wnEmpregos/getTutorial",JSON.stringify({}),(data) => {
		let i = 0;

		const getTutorial = data.getTutorial.sort((a,b) => (a.id > b.id) ? 1: -1);
		$('.box-tutorial').empty()
		$('.box-tutorial').html(`
			${getTutorial.map((item) => (`
			<div class="item-tutorial">${item.msg}</div>

			`)).join('')}
		`);
	});
}