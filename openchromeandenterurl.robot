*** Settings ***
Library    SikuliLibrary
Library    AutoBotLibrary
Documentation    This suite handles opening of chrome browser and typing of text using sikuli and autobot based on coordinates

*** Variables ***
${IMG_PATH}  C:/Users/AK20405866/Documents/SikuliImages

*** Test Cases ***
open chrome , enter url and press enter test case
    start of test
    enter url and press enter


*** Keywords ***
start of test
    [Documentation]    This keywords opens chrome from search bar in start menu using sikulilibrary
    start sikuli process
    Add Image path  ${IMG_PATH}
    SikuliLibrary.Click  start
    SikuliLibrary.Input text  searchstart  chrome
    Wait Until Screen Contain  chrome  10
    SikuliLibrary.Click  chrome

enter url and press enter
    [Documentation]  This keywords handles entering url and pressing enter without locators
    # move mouse to url text box
    move mouse to  ${207}  ${60}
    sleep  4s
    # type text in url
    type text  text=https://www.cricbuzz.com
    sleep  4s
    # press key enter
    AutoBotLibrary.press key  keys=enter
    sleep  4s
    #click on teams
    AutoBotLibrary.Click  ${730}  ${407}
    Sleep    4s
    # close chrome
    AutoBotLibrary.Click  ${1342}  ${22}
    Sleep  3s
