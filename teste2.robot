** Settings **
Library  SeleniumLibrary
Library  BuiltIn

** Variables **
${SITE_URL_BNB}     https://bnb.gov.br/

** Keywords **

Abrir site BNB
    Open Browser    ${SITE_URL_BNB}    chrome

Esperar Página Carregar
    Sleep   10s

Verificar abertura da tela
       Should Be Visible        xpath://span[@class="d-none d-xl-block ml-2"]

** Test Cases **
Cenário 1: Acessando site BNB
    [Tags]  Cenario1
    Abrir site BNB
    Esperar Página Carregar
    Verificar abertura da tela
    Esperar Página Carregar

   