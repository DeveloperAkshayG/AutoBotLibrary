*** Settings ***
Library    SikuliLibrary
Library    AutoBotLibrary
Documentation  This test case opens calculator based on image and enter numbers and performs operations based on coordinates
Suite Setup  Start of test
Suite Teardown    Stop Sikuli Process

*** Variables ***
${IMG_PATH}  C:/Users/AK20405866/Documents/SikuliImages

*** Test Cases ***
open calculator and perfrom automation of addition of two number
    Calculator operation

open calculator and perform automation of addition of one positive and one negative number
    Calculator Addition of one positive and one negative number

*** Keywords ***
Start of test
    [Documentation]    This keywords setup the environment for test and opens calculator
    Start Sikuli Process
    Add Image path  ${IMG_PATH}
    Highlight  start  5
    SikuliLibrary.Click  start
    Input text  searchstart  calculator
    Wait Until Screen Contain  calculator  10
    SikuliLibrary.Click  calculator

Calculator operation
    [Documentation]    This keyword opens the calculator and performs addition operation through automation
    #click on calculator on taskbar
    AutoBotLibrary.Click  ${1003}  ${745}
    Sleep    5s
    #click on number 2
    AutoBotLibrary.Click  ${992}  ${515}
    Sleep    2s
    #click on addition sign
    AutoBotLibrary.Click  ${1153}  ${516}
    Sleep    2s
    #click on number 8
    AutoBotLibrary.Click  ${995}  ${413}
    Sleep    2s
    #click on equal to
    AutoBotLibrary.Click  ${1153}  ${569}
    Sleep    2s
    #clear the result to zero
    AutoBotLibrary.Click  ${1073}  ${302}
    Sleep    2s

Calculator Addition of one positive and one negative number
    [Documentation]  This keyword performs the addition of one positive and one negative number on calculator through automation
    #click on minus sign
    AutoBotLibrary.Click  ${1150}  ${465}
    Sleep    2s
    #click on number 5
    AutoBotLibrary.Click  ${996}  ${465}
    Sleep    2s
    #click on addition sign
    AutoBotLibrary.Click  ${1153}  ${516}
    Sleep    2s
    #click on number 9
    AutoBotLibrary.Click  ${1073}  ${412} 
    Sleep    2s
    #click on equal to
    AutoBotLibrary.Click  ${1153}  ${569} 
    Sleep    2s
    #clear the result to zero
    AutoBotLibrary.Click  ${1073}  ${302} 
    Sleep    2s
    #close the calculator
    AutoBotLibrary.Click  ${1170}  ${82}
    Sleep    2s