/* global $ */

var $ = window.jQuery || window.$

var cargo_player_acessando = "nada"
var filtar_por = "id"
var filter_nui = "fechado"

$(document).ready(() => {
  loadDarkModeState()
  setupDarkModeToggle()

  window.addEventListener("message", (event) => {
    $("#procurar-membros").on("keyup", function () {
      if (filtar_por == "id") {
        const search = $(this).val().toLowerCase()
        $(".h-1").filter(function () {
          $(this)
            .closest(".item-ranking")
            .toggle($(this).text().toLowerCase().indexOf(search) > -1)
        })
      } else if (filtar_por == "nome") {
        const search = $(this).val().toLowerCase()
        $(".h-1").filter(function () {
          $(this)
            .closest(".item-ranking")
            .toggle($(this).text().toLowerCase().indexOf(search) > -1)
        })
      }
    })

    switch (event.data.action) {
      case "showMenu":
        var item = event.data

        $(".pagina-dashboard").show(0)
        $(".pagina-membros").hide(0)
        $(".pagina-vendas").hide(0)
        $(".pagina-banco").hide(0)
        $(".pagina-ranking").hide(0)
        $(".format").hide(0)

        $("#nome1").html(item.nome)
        $("#nome2").html(item.nome)
        $("#nome3").html(item.nome)
        $("#nome4").html(item.nome)
        $("#nome5").html(item.nome)
        $("#empresa").html(item.empresa)
        $("#empresa2").html(item.empresa)
        $("#empresa3").html(item.empresa)
        $("#empresa4").html(item.empresa)
        $("#imagem1").attr(`src`, item.imagem)
        $("#imagem2").attr(`src`, item.imagem)
        $("#imagem3").attr(`src`, item.imagem)
        $("#imagem4").attr(`src`, item.imagem)
        $("#membros").html(`${item.Membros_Setados} / 60`)
        $("#banco").html(item.banco)
        $("#rank").html(item.rank)

        cargo_player_acessando = item.cargo
        filter_nui = "fechado"

        refreshTables()
        limparInputs()
        FazerVerifyBotoes(item.cargo)

        $(".chat-overflow").animate(
          {
            scrollTop: $(".chat-overflow").get(0).scrollHeight,
          },
          300,
        )

        $("body").fadeIn(800)

        break

      case "hideMenu":
        $("body").fadeOut()
        break
    }
  })

  document.onkeyup = (data) => {
    if (data.which == 27) {
      $.post("http://wnGroupsv2/close")
    } else if (data.key == "Enter") {
      if ($("#chat-input").val() != "" && $("#chat-input").val() != " ") {
        enviarChat()
      }
    }
  }
})

function closeNui() {
  $.post("http://wnGroupsv2/close")
}

// ----------------------------------------
// -- Funcoes Inicio
// ----------------------------------------

function trocar_pagina(pagina) {
  $(".pagina-dashboard").hide(0)
  $(".pagina-membros").hide(0)
  $(".pagina-vendas").hide(0)
  $(".pagina-banco").hide(0)
  $(".pagina-ranking").hide(0)

  if (pagina == "inicio") {
    $(".pagina-dashboard").fadeIn(500)
  }

  if (pagina == "membros") {
    $(".pagina-membros").fadeIn(500)
  }

  if (pagina == "vendas") {
    $(".pagina-vendas").fadeIn(500)
  }

  if (pagina == "banco") {
    $(".pagina-banco").fadeIn(500)
  }

  if (pagina == "ranking") {
    $(".pagina-ranking").fadeIn(500)
  }
}

function abrirFilterMembros() {
  if (filter_nui == "aberto") {
    filter_nui = "fechado"
    $(".filtar-options").hide(0)
  } else {
    filter_nui = "aberto"
    $(".filtar-options").show(0)
  }
}

function setarFiltroMembros(tipo) {
  $(".filtar-options").fadeOut(0)
  filtar_por = tipo
  filter_nui = "fechado"
}

function FazerVerifyBotoes(cargo) {
  if (
    cargo == "Lider" ||
    cargo == "Diretor" ||
    cargo == "Comando Geral" ||
    cargo == "Dona" ||
    cargo == "Diretora" ||
    cargo == "Ministro Presidente STF" ||
    cargo == "Marechal"
  ) {
    $(".contratar-backgrond").show()
    $(".adicionar-anuncio").show()
  } else if (cargo == "Gerente" || cargo == "Vice Diretor" || cargo == "Coronel") {
    $(".contratar-backgrond").show()
    $(".adicionar-anuncio").show()
  } else {
    $(".contratar-backgrond").hide()
    $(".adicionar-anuncio").hide()
  }
}

function format(pagina) {
  if (pagina == "fazer-anuncio") {
    $(".format-anuncio-box").show()
  } else if (pagina == "contratar") {
    $(".format-contratar-box").show()
  } else if (pagina == "depositar") {
    $(".format-bank-box").show()
  } else if (pagina == "sacar") {
    $(".format-bank2-box").show()
  } else if (pagina == "adicionarvenda") {
    $(".format-adicionarvenda").show()
  }

  $(".format").fadeIn(500)
}

function fechar_format(pagina) {
  $(".format").fadeOut(300)
  $(".format-anuncio-box").hide()
  $(".format-contratar-box").hide()
  $(".format-bank-box").hide()
  $(".format-bank2-box").hide()
  $(".format-adicionarvenda").hide()
  $(".format-adicionarquantia").hide()
  $(".format-ver-venda").hide()
}

function refreshTables() {
  listaAnuncios()
  listaChat()
  membrosLista()
  ListaVendas()
  $(".chat-overflow").animate({ scrollTop: 20000000 }, "slow")
}

function limparInputs() {
  $("#inputAnuncio").val("")
  $("#chat-input").val("")
  $("#inputContratar").val("")
  $("#inputValorDepositar").val("")
  $("#inputValorSacar").val("")
  $("#compradorinput").val("")
  $("#procurar-item").val("")
  $("#procurar-membros").val("")
  $("#adicionarquantia").val("")
}

// ----------------------------------------
// -- Anuncios
// ----------------------------------------

function listaAnuncios() {
  $.post("http://wnGroupsv2/anunciosLista", JSON.stringify({}), (data) => {
    const anunciosLista = data.anunciosLista.sort((a, b) => (a.id > b.id ? 1 : -1))
    $(".overflow-anuncios").empty()
    anunciosLista.forEach((key, value) => {
      $(".overflow-anuncios").prepend(`
        <div class="item-anuncio">
          <div class="header-anuncios">
            <img class="imagem-player-anuncio" src="${key.imagem}">
            <div class="nome-player-anuncio">${key.nome} <ss style="color: ${key.color};">#${key.passaporte}</ss></div>
            <div class="data-anuncio">${key.data}</div>
          </div>
          <div class="mensagem-anuncio">${key.mensagem}</div>
        </div>
      `)
    })
  })
}

function enviarAnuncio() {
  const $el = $("#enviarAnuncio")
  const mensagem = $("#inputAnuncio").val()
  if ($el.length) {
    $.post(
      "http://wnGroupsv2/enivarAnuncio",
      JSON.stringify({
        mensagem: mensagem,
      }),
      (data) => {
        if (data.retorno == "done") {
          refreshTables()
          limparInputs()
          fechar_format("")
        }
      },
    )
  }
}

// ----------------------------------------
// -- Chat
// ----------------------------------------

function listaChat() {
  $.post("http://wnGroupsv2/chatLista", JSON.stringify({}), (data) => {
    const chatLista = data.chatLista.sort((a, b) => (b.id > a.id ? 1 : -1))
    $(".chat-overflow").empty()

    $(".chat-overflow").animate({ scrollTop: 20000000 }, "slow")

    chatLista.forEach((key, value) => {
      $(".chat-overflow").prepend(`
			<div class="mensagem-item">
				<img class="msg-img-player" src="${key.imagem}" alt="">
				<div class="msg-nome-player">${key.nome} <ss style="color: #295CDE;">#${key.passaporte}</ss> | ${key.data}</div>
				<div class="msg-box"><div class="mensagem-done">${key.mensagem}</div></div>
			</div>
			`)
    })
  })
}

function enviarChat() {
  const $el = $(".enviar-mensagem")
  const mensagem = $("#chat-input").val()
  if ($el.length) {
    if ($("#chat-input").val() != "" && $("#chat-input").val() != " ") {
      $.post(
        "http://wnGroupsv2/enviarChat",
        JSON.stringify({
          mensagem: mensagem,
        }),
        (data) => {
          if (data.retorno == "done") {
            refreshTables()
            limparInputs()
          }
        },
      )
    }
  }
}

// ----------------------------------------
// -- Membros Lista
// ----------------------------------------

function membrosLista() {
  $.post("http://wnGroupsv2/membrosLista", JSON.stringify({}), (data) => {
    const membrosLista = data.membrosLista.sort((a, b) => (b.id > a.id ? 1 : -1))
    $(".overflow-membros").empty()

    function getStatusClass(status) {
      if (status.toLowerCase() === "online") return "status-online"
      if (status.toLowerCase() === "afk") return "status-afk"
      return "status-offline"
    }

    if (
      cargo_player_acessando == "Lider" ||
      cargo_player_acessando == "Diretor" ||
      cargo_player_acessando == "Diretora" ||
      cargo_player_acessando == "Comando Geral" ||
      cargo_player_acessando == "Dona" ||
      cargo_player_acessando == "Ministro Presidente STF" ||
      cargo_player_acessando == "Marechal"
    ) {
      membrosLista.forEach((key) => {
        $(".overflow-membros").prepend(`
        <div class="item-membro">
          <div class="ah1">#${key.passaporte}</div>
          <div class="ah2">
            <img src="${key.img}">
            <div class="nome-ah2">${key.nome}</div>
            <div class="cargo-ah2">${key.cargo}</div>
          </div>
          <div class="ah3">
            <div class="${getStatusClass(key.status)}" style="color: ${key.color};">${key.status}</div>
          </div>
          <div class="ah4">${key.contratante}</div>
          <div class="ah5">
            <div class="botoes-acoes" onclick="promover(this)" data-passaporte="${key.passaporte}" title="Promover"><i class="fad fa-angle-up"></i></div>
            <div class="botoes-acoes" onclick="rebaixar(this)" data-passaporte="${key.passaporte}" title="Rebaixar"><i class="fad fa-angle-down"></i></div>
            <div class="botoes-acoes" onclick="demitir(this)" data-passaporte="${key.passaporte}" title="Demitir"><i class="fad fa-times"></i></div>
          </div>
        </div>`)
      })
    } else if (
      cargo_player_acessando == "Gerente" ||
      cargo_player_acessando == "Vice Diretor" ||
      cargo_player_acessando == "Coronel"
    ) {
      membrosLista.forEach((key) => {
        $(".overflow-membros").prepend(`
        <div class="item-membro">
          <div class="ah1">#${key.passaporte}</div>
          <div class="ah2">
            <img src="${key.img}" alt="${key.nome}">
            <div class="nome-ah2">${key.nome}</div>
            <div class="cargo-ah2">${key.cargo}</div>
          </div>
          <div class="ah3">
            <div class="${getStatusClass(key.status)}" style="color: ${key.color};">${key.status}</div>
          </div>
          <div class="ah4">${key.contratante}</div>
          <div class="ah5">
            <div class="botoes-acoes" onclick="promover(this)" data-passaporte="${key.passaporte}" title="Promover"><i class="fad fa-angle-up"></i></div>
            <div class="botoes-acoes" onclick="rebaixar(this)" data-passaporte="${key.passaporte}" title="Rebaixar"><i class="fad fa-angle-down"></i></div>
            <div class="botoes-acoes" onclick="demitir(this)" data-passaporte="${key.passaporte}" title="Demitir"><i class="fad fa-times"></i></div>
          </div>
        </div>`)
      })
    } else {
      membrosLista.forEach((key) => {
        $(".overflow-membros").prepend(`
        <div class="item-membro">
          <div class="ah1">#${key.passaporte}</div>
          <div class="ah2">
            <img src="${key.img}" alt="${key.nome}">
            <div class="nome-ah2">${key.nome}</div>
            <div class="cargo-ah2">${key.cargo}</div>
          </div>
          <div class="ah3">
            <div class="${getStatusClass(key.status)}" style="color: ${key.color};">${key.status}</div>
          </div>
          <div class="ah4">${key.contratante}</div>
          <div class="ah5"></div>
        </div>`)
      })
    }
  })
}

function promover(data) {
  $.post(
    "http://wnGroupsv2/promover",
    JSON.stringify({
      passaporte: data.dataset.passaporte,
    }),
    (data) => {
      if (data.retorno == "done") {
        refreshTables()
        limparInputs()
      }
    },
  )
}

function rebaixar(data) {
  $.post(
    "http://wnGroupsv2/rebaixar",
    JSON.stringify({
      passaporte: data.dataset.passaporte,
    }),
    (data) => {
      if (data.retorno == "done") {
        refreshTables()
        limparInputs()
      }
    },
  )
}

function demitir(data) {
  $.post(
    "http://wnGroupsv2/demitir",
    JSON.stringify({
      passaporte: data.dataset.passaporte,
    }),
    (data) => {
      if (data.retorno == "done") {
        refreshTables()
        limparInputs()
      }
    },
  )
}

// ----------------------------------------
// -- Contratar
// ----------------------------------------

function OpenInserirPassaporte() {
  $(".format").fadeIn(500)
  $(".format-contratar-box").fadeIn(500)
}

function contratar() {
  const $el = $(".fa-EnviarAnuncio")
  const passaporte = $("#inputContratar").val()
  if ($el.length) {
    $.post(
      "http://wnGroupsv2/contratar",
      JSON.stringify({
        passaporte: passaporte,
      }),
      (data) => {
        if (data.retorno == "done") {
          refreshTables()
          limparInputs()
          fechar_format("")
        }
      },
    )
  }
}

// ----------------------------------------
// -- Banco
// ----------------------------------------

function openFormatDepositar() {
  $(".format").fadeIn(500)
  $(".format-bank-box").fadeIn(500)
}

function openFormatSacar() {
  $(".format").fadeIn(500)
  $(".format-bank2-box").fadeIn(500)
}

function depositarConfirmar() {
  const $el = $(".fa-EnviarAnuncio")
  const valor = $("#inputValorDepositar").val()
  if ($el.length) {
    $.post(
      "http://wnGroupsv2/depositar",
      JSON.stringify({
        valor: valor,
      }),
      (data) => {
        if (data.retorno == "done") {
          refreshTables()
          limparInputs()
          fechar_format("")
        }
      },
    )
  }
}

function sacarConfirmar() {
  const $el = $(".fa-EnviarAnuncio")
  const valor = $("#inputValorSacar").val()
  if ($el.length) {
    $.post(
      "http://wnGroupsv2/sacar",
      JSON.stringify({
        valor: valor,
      }),
      (data) => {
        if (data.retorno == "done") {
          refreshTables()
          limparInputs()
          fechar_format("")
        }
      },
    )
  }
}

// ----------------------------------------
// -- Vendas
// ----------------------------------------

function ListaVendas() {
  $.post("http://wnGroupsv2/ListaVendas", JSON.stringify({}), (data) => {
    const ListaVendas = data.ListaVendas.sort((a, b) => (a.id > b.id ? 1 : -1))
    $(".overflow-vendas").empty()

    ListaVendas.forEach((key) => {
      $(".overflow-vendas").prepend(`
			<div class="item-contratados">
				<div class="i-t-1">
					<div class="i-t-1-text">#${key.id}</div>
				</div>
				<div class="i-t-2">
					<img class="imagem-ct" src="${key.imagemplayer}" alt="">
					<div class="nome-ct">${key.vendedor}</div>
					<div class="cargo-ct">${key.cargo}</div>
				</div>
				<div class="i-t-4">
					<div class="i-t-4-text"><i class="far fa-boxes IconT3"></i> ${key.valor} $</div>
				</div>
				<div class="i-t-5">
					<div class="upB verVenda" onclick="verVenda(this)" data-idvenda="${key.id}"><i class="fad fa-eye IconT5"></i></div>
					<div class="upB deletarVenda" onclick="deletarVenda(this)" data-idvenda="${key.id}"><i class="fad fa-trash IconT5"></i></div>
				</div>
			</div>
			`)
    })
  })
}

function CriarVenda() {
  const comprador = $("#compradorinput").val()
  const valor = $("#vendainputvalor").val()
  if (comprador && valor) {
    $.post(
      "http://wnGroupsv2/criarVenda",
      JSON.stringify({
        comprador: comprador,
        valor: valor,
      }),
      (data) => {
        if (data.retorno == "done") {
          refreshTables()
          limparInputs()
          fechar_format("")
          trocar_pagina("vendas")
        }
      },
    )
  }
}

function verVenda(data) {
  $.post(
    "http://wnGroupsv2/verVenda",
    JSON.stringify({
      idvenda: data.dataset.idvenda,
    }),
    (data) => {
      if (data.retorno == "done") {
        $(".img-vendedor").attr(`src`, data.imagemplayer)
        $("#nome-vendedor").html(data.vendedor)
        $("#passaporte-vendedor").html(" #" + data.passaporte)
        $("#DataVendaBox").html(data.data)
        $("#ValorVendaBox").html(data.valor + " $")
        $("#iddavenda").html("#" + data.idvenda)
        $(".format").fadeIn(500)
        $(".format-ver-venda").fadeIn(500)
      }
    },
  )
}

function deletarVenda(data) {
  $.post(
    "http://wnGroupsv2/deletarVenda",
    JSON.stringify({
      idvenda: data.dataset.idvenda,
    }),
    (data) => {
      if (data.retorno == "done") {
        refreshTables()
        limparInputs()
      }
    },
  )
}

function InserirTabela() {
  const quantia = $("#adicionarquantia").val()
  if (quantia) {
    $.post(
      "http://wnGroupsv2/InserirTabela",
      JSON.stringify({
        quantia: quantia,
      }),
      (data) => {
        if (data.retorno == "done") {
          refreshTables()
          limparInputs()
          fechar_format("")
        }
      },
    )
  }
}

$(document).on("keyup", "#procurar-membros", function () {
  const search = $(this).val().toLowerCase()
  $(".overflow-membros .item-membro").filter(function () {
    $(this).toggle($(this).find(".nome-ah2").text().toLowerCase().indexOf(search) > -1)
  })
})

// ----------------------------------------
// -- Modo Dark 
// ----------------------------------------

function loadDarkModeState() {
  const darkModeEnabled = localStorage.getItem("darkModeEnabled") === "true"
  const darkModeCheckbox = document.getElementById("dark-mode")

  if (darkModeCheckbox) {
    darkModeCheckbox.checked = darkModeEnabled
    if (darkModeEnabled) {
      applyDarkMode()
    }
  }
}

function applyDarkMode() {
  const isDarkMode = document.getElementById("dark-mode")?.checked || false
  document.body.setAttribute("data-dark-mode", isDarkMode ? "true" : "false")
}

function setupDarkModeToggle() {
  const darkModeCheckbox = document.getElementById("dark-mode")

  if (darkModeCheckbox) {
    darkModeCheckbox.addEventListener("change", function () {
      const isEnabled = this.checked
      localStorage.setItem("darkModeEnabled", isEnabled)

      applyDarkMode()

      $.post(
        "http://wnGroupsv2/setDarkModeCache",
        JSON.stringify({
          darkModeEnabled: isEnabled,
        }),
      )
    })
  } else {
    console.log("[v0] Dark mode checkbox not found")
  }
}
