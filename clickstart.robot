*** Settings ***
Library  AutoBotLibrary


*** Variables ***

*** Test Cases ***
click start icon on desktop
    Click  ${244}  ${744}
    Sleep    5s
    Click  ${1050}  ${734}
    Sleep    5s

