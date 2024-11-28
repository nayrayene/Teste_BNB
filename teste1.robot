** Settings **
Library  SeleniumLibrary
Library  BuiltIn

** Variables **
${SITE_URL_BNB}   https://bnb.gov.br/  
${SITE_URL}   https://automationpratice.com.br/  
${USUARIO_EMAIL}  qazando@teste.com   
${USUAARIO_SENHA}    123456 

** Keywords **

Abrir esse site
    [Arguments]  ${url}
    Open Browser    ${url}    chrome

Abrir site BNB
    Open Browser    ${SITE_URL_BNB}    chrome

Abrir Site
    Open Browser    ${SITE_URL}    chrome

Esperar Página Carregar
    Sleep   5s

Clicar em Link de Login
    Click Element    xpath://a[@href='/login']

Preencher Campo de E-mail
    Input Text   id:user    ${USUARIO_EMAIL} 

Preencher Campo de Senha
    Input Text   id:password    ${USUAARIO_SENHA}

Clicar em Botão de Login
    Click Element    id:btnLogin

Verificar texto login realizado
    ${texto_atual}      Get Text    id:swal2-title
    Should Be Equal As Strings     ${texto_atual}      Login realizado

Tirar print do teste
    Capture Page Screenshot
    
** Test Cases **
Cenário 1: Acessando o site da QAzando
    [Tags]  Cenario1
    Abrir Site exemplo
    Esperar Página Carregar
    Clicar em Link de Login
    Esperar Página Carregar
    Preencher Campo de E-mail
    Preencher Campo de Senha
    Esperar Página Carregar
    Clicar em Botão de Login
    Esperar Página Carregar
    Verificar texto login realizado
    Esperar Página Carregar

Cenário 2: Acessando site BNB
    [Tags]  Cenario2
    Abrir site BNB
    Tirar print do teste

Cenário 3: Testando valor no teste
    [Tags]  Cenario3
    Abrir esse site     https://www.google.com/
    Tirar print do teste
   