*** Settings ***

Library    SeleniumLibrary    

Suite Setup        log  Message 1  #je suis a linterieur de TestSuite setup
Suite Teardown     Log  Message 2  # je suis a linterieur de TestSuite teardown
Test Setup         log  Message 3  #je suis a linterieur de Test setup
Test Teardown      Log  Message 4  #je suis a linterieur de Test teardown     

Default Tags    sanity


*** Test Cases ***
MyFirstTest
    [Tags]  smoke
    Log    Hello Word    
MySecondTest
    Log  inside second test
    Set Tags    regression1
    Remove Tags    regression1
MyThirdTest
    Log    inside third test    
MyFourthTest
    Log    inside fourth test    