*** Settings ***
Library     SeleniumLibrary 

*** Variables ***
${url}              https://google.com

*** Keywords ***
Nova sessão
    Open Browser                    ${url}              chrome

Encerra sessão
    Close Browser  