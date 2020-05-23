*** Settings ***

Library    SeleniumLibrary    

*** Test Cases ***
MyFirstTest
    Log    Hello Word    

FirstSeleniumTest
    Open Browser        https://google.com    ff
     Set Browser Implicit Wait    20
     Input Text    name=q    Automatisation Testing
     Press Keys    name=q   ENTER
     Close Browser
     Log    Test Completed

SampleLoginTest
     
    Open Browser                    ${URL}  ff
    Set Browser Implicit Wait        5
    Input Text                    id=txtUsername         &{Logindata}[username]     #@{CREDENTIALS}[0]
    Input Password                id=txtPassword         &{Logindata}[password]     # @{CREDENTIALS}[1] 
    Click Button                  id=btnLogin
    Sleep                         2s    
    Click Element                 id=welcome    
    Click Element                 link=Logout  
    Log                           Test Completed  
    Log        This test was executed by %{username} on %{os}    #var environnement

*** Variables ***
${URL}    https://opensource-demo.orangehrmlive.com/  # variable 
@{CREDENTIALS}  Admin  admin123   #variable liste contient plus qu'un variable
&{Logindata}  username=Admin    password=admin123