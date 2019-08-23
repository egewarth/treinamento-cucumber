class PAECadastro < SitePrism::Page
    include Capybara::DSL
    # include RSpec::Matchers

    # declara os botoes a serem clicados
    element :cadastro_btn, ".menu li a", :text => "Cadastro"
    element :instituicao_btn, ".menu .submenu li a", :text => "Instituição"
    element :obrigacao_btn, ".menu .submenu li a", :text => "Obrigação do Participante"
    element :incluir_btn, "#j_idt196"
    element :incluir_obrigacao_btn, "#j_idt200"
    element :submit_btn, "#j_idt273"
    element :submit_obrigacao_btn, "#salvarIncluir"
    
    # declara os elementos a serem preenchidos
    element :cnpj, "#idCnpj"
    element :instituicao, "#nomeInstituicao"
    element :mec, "#idMec"
    element :sigla, "#idSigla"
    element :cep, "#idCep"
    element :endereco, "#idEndereco"
    element :complemento, "#idComplemento"
    element :bairro, "#idBairro"
    element :id_uf, "#uf"
    element :uf_option, "option[value='MT']"
    element :municipio, "#municipio"
    element :curso, :id, "tabela:5:selectCursoInteresse"

    element :descricao, "#descricaoIncluir"
    element :modalidade, "#modalidadeIncluir"
    element :modalidade_option, "option[value='POS_GRADUACAO']"
    
    element :sucesso_inclusao, "#sucesso_header_content"

    # metodo responsavel pelo acesso a pagina de cadastro
    # e necessario estar no sistema pae
    def acessar_instituicao_page
        cadastro_btn.click
        instituicao_btn.click
        incluir_btn.click
    end

    def acessar_obrigacao_page
        cadastro_btn.click
        obrigacao_btn.click
        incluir_obrigacao_btn.click
    end

    # metodo responsavel pela inclusao dos dados de uma instituicao
    # e necessario estar na pagina de cadastro de instituicao
    def incluir_instituicao
        cnpj.set("82941390000169")
        instituicao.set("Graminha")
        mec.set("0987654321")
        sigla.set("Grass")
        cep.set("71699795")
        endereco.set(Faker::JapaneseMedia::SwordArtOnline.location)
        complemento.set(Faker::JapaneseMedia::SwordArtOnline.location)
        bairro.set(Faker::JapaneseMedia::SwordArtOnline.location)

        within id_uf do
            uf_option.click
        end

        municipio.set(Faker::JapaneseMedia::SwordArtOnline.location)
        curso.set(true)
        
        submit_btn.click
    end

    def incluir_obrigacao
        descricao.set(Faker::TvShows::Friends)
        within modalidade do
            modalidade_option.click
        end

        submit_obrigacao_btn.click
    end

  end