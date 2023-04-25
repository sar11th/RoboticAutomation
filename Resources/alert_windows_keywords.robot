*** Settings ***
Library  SeleniumLibrary
Variables    D:/PycharmProjects/testing/project/demoqa/PageObjects/locators.py
Resource    D:/PycharmProjects/testing/project/demoqa/Resources/Commonkeywords.robot
*** Keywords ***
Verify Alert Windows Page
    [Documentation]   This Keyword is used to verify Alert Windows Page
    ${url}=    Get Location
    Should Be Equal As Strings    ${url}    https://demoqa.com/alertsWindows
    Verify Please Select Text
    Tools Image
    ${page_text_name}=    Get Text  ${page_text}
    log to console    ${page_text_name}    Alerts, Frame & Windows
    sleep    3s
    Verify NavbarItems
    sleep    3s
    Verify page Navbar Items
    Page Should Contain Element    ${Sortable}
    Page Should Contain Element    ${Selectable}
    Page Should Contain Element    ${Resizable}
    Page Should Contain Element    ${Droppable}
    Page Should Contain Element    ${Dragabble}
    sleep    3s
    Footer Data Contain
    close browser
