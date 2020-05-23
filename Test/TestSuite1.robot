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
     
    Open Browser    https://opensource-demo.orangehrmlive.com/  ff
    Set Browser Implicit Wait    5
    Input Text        id=txtUsername    Admin    
    Input Password    id=txtPassword    admin123    
    Click Button      id=btnLogin
    Sleep    2s    
    Click Element     id=welcome    
    Click Element    link=Logout  
    Log    Test Completed    
    