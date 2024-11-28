** Settings **
Library  SeleniumLibrary
Library  BuiltIn

** Variables **
${SITE_URL}   https://automationpratice.cm.br/  
${USUARIO_EMAIL}  qazando@teste.com   
${USUAARIO_SENHA}    123456 

** Keywords **
Abrir Site
    Open Browser    ${SITE_URL}    chrome
    Esperar Elemento    10

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

Esperar Elemento
    [Arguments]    ${tempo}
    Set Selenium Implicit Wait    ${tempo}s

Tirar print do teste
    Capture Page Screenshot

** Test Cases **
Cenário 1: Acessando o site da QAzando
    [Tags]  Cenario1
    Abrir Site
    Tirar print do teste
    Clicar em Link de Login
    Tirar print do teste
    Preencher Campo de E-mail
    Preencher Campo de Senha
    Tirar print do teste
    Clicar em Botão de Login
    Tirar print do teste
    Verificar texto login realizado
     
