*** Settings ***
Library    AutoBotLibrary
Documentation    This suite demonstrates type into notepad , save file and close operation using automation
*** Variables ***

*** Test Cases ***
click on start , search notepad and type in same
    start the test
    Type into notepad
    save file
    close notepad

*** Keywords ***
start the test
    [Documentation]    This keywords sets up the test with opening of notepad
    # click start
    Click  ${208}  ${745}
    Sleep    5s
    # type notepad in search box
    type text  text=notepad
    Sleep    5s
    # press enter
    press key  keys=enter
    sleep  5s

Type into notepad
    [Documentation]    This keywords type into notepad
    # enter text
    type text  text=text typed using AutoBot library
    press key  keys=enter
    type text  text=i am successfully able to do using automation
    Sleep    5s

save file
    [Documentation]    This keywords save file into notepad
    # save the file
    press and hold key  ctrl
    press key  s
    release key  ctrl
    sleep  4s
    # type file name
    type text  C:\\Users\\AK20405866\\Desktop\\ROBOT_FRAMEWORK_NOTES\\automation
    Sleep    3s

    # press enter
    press key  keys=enter

close notepad
    [Documentation]    This keywords close notepad
    # close notepad
    press and hold key  alt
    press key  f4
    release key  alt