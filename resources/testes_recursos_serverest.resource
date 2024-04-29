*** Settings ***
Library   SeleniumLibrary

*** Variables ***
${URL}=                       https://front.serverest.dev/login
${cadastraseLink}            //a[@data-testid='cadastrar'][contains(.,'Cadastre-se')]
${nomeInput}=                //input[contains(@name,'nome')]
${emailInput}                //input[contains(@name,'email')]
${senhaInput}                //input[contains(@name,'password')]
${administradorCheckbox}     //input[contains(@name,'administrador')]
${cadastrarButton}           //button[@data-testid='cadastrar'][contains(.,'Cadastrar')] 
*** Keywords ***

Abrir o navegador
   Open Browser  browser=chrome
   Maximize Browser Window
  
   
Fechar o navegador
    Close Browser

Passo 1 - Acessar a pagina de login ServeRest
   Go to   url=${URL}
Passo 2 - Clicar em cadastre-se    
   Wait Until Element Is Visible   locator=${cadastraseLink}
   Click Element                   locator=${cadastraseLink}       

Passo 3 -Digitar um nome
    Wait Until Element Is Visible    locator=${nomeInput}
    Input Text                       locator=${nomeInput}   text=Testernildo da Silva
    

Passo 4 - Digitar um e-mail
    Wait Until Element Is Visible    locator=${emailInput}   
    Input Text                     locator=${emailInput}     text=testernildodasilva2024@qa.coders.com.br
    

Passo 5 - Digitar uma senha
   Wait Until Element Is Visible    locator=${senhaInput}   
   Input Password                   locator=${senhaInput}     password=TesternildoQacoders@10
    
  
Passo 6- Escolher perfil de usuário administrador
  Wait Until Element Is Visible    locator=${administradorCheckbox}
  Select Checkbox                  locator=${administradorCheckbox}
  

Passo 7- Clicar em cadastrar
  Wait Until Element Is Visible    locator=${cadastrarButton}  
  Click Button                     locator=${cadastrarButton}  
  