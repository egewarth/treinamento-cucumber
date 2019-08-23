#language:pt

  Funcionalidade: Acessar o PAE
    Como um usuário
    Quero acessar o PAE
    Para ter acesso a todas as funcionalidades

      Contexto: Acessar o PAE

      @login
      Cenário: Acessar o PAE
        Dado que eu abra a tela do PEXNET
        Quando eu insiro os dados do usuario
        Então devo acessar a pagina do PAE

      @obrigacao
      Cenário: criar obrigacao
        Dado que eu abra a tela de obrigacao
        Quando eu insiro os dados da obrigacao
        Então devo inserir obrigacao
        
