*** Settings ***
Resource            base.robot

Test Setup          Nova sessão
Test Teardown       Encerra sessão

*** Variables ***
${campo_busca}      css:input[name='q']
${resultados}       css:div[id='result-stats']
${titulos_busca}    css:h3

*** Test Cases ***
Realizando busca por TESTE 
    Go To                           ${url}
    Wait Until Element Is Visible   ${campo_busca}
    Input Text                      ${campo_busca}      TESTE 
    Press Keys                      ${campo_busca}      ENTER
    Wait Until Element Is Visible   ${resultados}    
    Element Should Contain          ${titulos_busca}    test  
