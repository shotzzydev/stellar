$(document).ready(function(){    
	window.addEventListener("message",function(event){

		$(".inputprocurar").on("keyup", function () {
            let search = $(this).val().toLowerCase();
            $(".nome-carro").filter(function () {
              $(this).closest(".item").toggle($(this).text().toLowerCase().indexOf(search) > -1)
            });	
		});

		switch(event.data.action){
			case "showMenu":
                $("#pagina-carro").fadeOut(0);
                $('.bau').fadeOut(0)
				veh()
				$("body").fadeIn(800);

			break;
            case "hideMenu":
				$("body").fadeOut();		
			break;
		}
	});

	document.addEventListener("keydown",function(event) {
		if (event.key == "Escape"){
			$("body").fadeOut();	
			$.post("http://wnGarages/close");
		}
	})
});

function veh(){
    $.post("http://wnGarages/vehList",JSON.stringify({}),(data) => {
		let vehs = data.vehs.sort((a,b) => (b.bau > a.bau) ? 1: -1);
		$('.overflow-carros').empty()
		vehs.forEach((key,value) => {
			
			$('.overflow-carros').prepend(`
				<div class="item" onclick="vercarro(this)" data-link_imgs="http://127.0.0.1/scripts/images/cars" data-carro="${key.name}" data-model="${key.model}" data-plate="${key.plate}" data-engine="${key.engine}" data-body="${key.body}" data-fuel="${key.fuel}">
                <div class="tipo-carro">Privado</div>
                <img class="img-carro" src="http://127.0.0.1/scripts/images/cars/${key.model}.png" alt="">
                <div class="nome-carro">${key.name}</div>
				</div>
			`)
			
		});
    });
}

function vercarro(data){
    $("#pagina-carro").fadeIn();
    $('.nome-carro2').html(data.dataset.carro)
    $('#placa').html(data.dataset.plate)

    $(".carro-meio").attr(`src`, data.dataset.link_imgs + "/" + data.dataset.model + ".png");
    $('.bau').hide(0)
    $('#pagina-carro').fadeIn(700)

    // pega valores
    let fuel = parseInt(data.dataset.fuel)
    let engine = parseInt(data.dataset.engine)
    let body = parseInt(data.dataset.body)

    // aplica largura e porcentagem (sem mudar cor)
    setSimpleBar("#gasolina", "#gasolinat", fuel)
    setSimpleBar("#motor", "#motort", engine)
    setSimpleBar("#lataria", "#latariat", body)

    $.post("http://wnGarages/vercarro", JSON.stringify({
        model : data.dataset.model,
        plate : data.dataset.plate,
    }));
}

function setSimpleBar(barId, textId, percent){
    percent = Math.min(Math.max(percent, 0), 100); // trava entre 0 e 100
    $(barId).css("width", percent + "%");
    $(textId).text(percent + "%");
}


function bau(){
    $.post("http://wnGarages/reqbau",JSON.stringify({
	}), (data) =>{ 
		if(data.retorno == 'done') {
            $(".infcarro").fadeOut(0);
            $('.bau').fadeIn(700)

            $.post("http://wnGarages/bauCarro",JSON.stringify({}),(data) => {
                let bau = data.bau.sort((a,b) => (b.bau > a.bau) ? 1: -1);
                $('.overflow-itens').empty(
                    bau.forEach((key,value) => {
                
                        const maxDurability = 86400 * key.days;
                        const newDurability = (maxDurability - key.durability) / maxDurability;
                        var actualPercent = newDurability * 100;
            
                        if (actualPercent <= 1)
                            actualPercent = 1;
            
                        $('.overflow-itens').prepend(`
                            <div class="item-inv">
                                <div class="item-inv-nome">${key.name}</div>
                                <img class="item-img" src="nui://inventory/web-side/images/${key.index}.png" alt="">
                                <div class="item-inv-qtd">${key.amount}x</div>
                                <div class="durability">
                                    <div class="durability2" style="width: ${actualPercent == 1 ? "100":actualPercent}%; background: ${actualPercent == 1 ? "#fc5858":colorPicker(actualPercent)};"></div>
                                </div>
                            </div>`)
                        })
                )
            })
            bau()
        
		} 
	});
}
function bau2(){
    $.post("http://wnGarages/bauCarro",JSON.stringify({}),(data) => {
     
        $('.overflow-itens').empty()     
        });
    }

function retirarCarro(){
    $.post("http://wnGarages/retirarcarro");
}

function trocarPlaca(){
    $("body").fadeOut();	
	$.post("http://wnGarages/close");;
    $.post("http://wnGarages/trocarPlaca");
}


function fecharNui(){
	$("body").fadeOut();	
	$.post("http://wnGarages/close");;
}

function guardarcarro(){
    $.post("http://wnGarages/guardarCarro");
}

const colorPicker = (percent) => {
	var colorPercent = "#2e6e4c";

	if (percent >= 100)
		colorPercent = "rgba(255,255,255,0)";

	if (percent >= 51 && percent <= 75)
		colorPercent = "#fcc458";

	if (percent >= 26 && percent <= 50)
		colorPercent = "#fc8a58";

	if (percent <= 25)
		colorPercent = "#fc5858";

	return colorPercent;
}