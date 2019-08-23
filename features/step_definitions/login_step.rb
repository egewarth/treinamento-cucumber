require 'faker'

Dado ("que eu abra a tela do PEXNET") do
    # acessa a pagina inicial e faz login
    @pagina_inicial = PaginaInicial.new
    @pagina_inicial.login
    # acessa a aba de produtos
    click_on("Produtos")
    # acessa a aba do PAE
    click_on("PAE - Programa de Auxílio a Educação")
end

Quando ("eu insiro os dados do usuario") do
    # acessa a janela do PAE (nova janela aberta)
    within_window(windows.last) do
        # acessa a pagina de cadastro
        @pae_cadastro = PAECadastro.new
        @pae_cadastro.acessar_instituicao_page
        # inclui os dados da instituicao e submete
        @pae_cadastro.incluir_instituicao
    end
end

Então ("devo acessar a pagina do PAE") do
    within_window(windows.last) do
        if expect(page).to have_text 'Instituição de Ensino incluída com sucesso!'
            print("ok")
        else
            fail("Não conseguiu incluir")
        end
    end
end

Dado ("que eu abra a tela de obrigacao") do
    # acessa a pagina inicial e faz login
    @pagina_inicial = PaginaInicial.new
    @pagina_inicial.login
    # acessa a aba de produtos
    click_on("Produtos")
    # acessa a aba do PAE
    click_on("PAE - Programa de Auxílio a Educação")
end

Quando ("eu insiro os dados da obrigacao") do
    # acessa a janela do PAE (nova janela aberta)
    within_window(windows.last) do
        # acessa a pagina de cadastro
        @pae_cadastro = PAECadastro.new
        @pae_cadastro.acessar_obrigacao_page
        # inclui os dados da instituicao e submete
        @pae_cadastro.incluir_obrigacao
    end
end

Então ("devo inserir obrigacao") do
    within_window(windows.last) do
        if expect(page).to have_text 'Obrigação do Participante incluída com sucesso!'
            print("ok")
        else
            fail("Não conseguiu incluir")
        end
    end
end