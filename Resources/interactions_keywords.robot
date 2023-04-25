*** Settings ***
Library  SeleniumLibrary
Variables    D:/PycharmProjects/testing/project/demoqa/PageObjects/locators.py
Resource    D:/PycharmProjects/testing/project/demoqa/Resources/Commonkeywords.robot
*** Keywords ***
Verify ineractions Page
    ${url}=    Get Location
    Should Be Equal As Strings    ${url}    https://demoqa.com/interaction
    Verify Please Select Text
    Tools Image
    ${page_text_name}=    Get Text  ${page_text}
    log to console    ${page_text_name}    Interactions
    sleep    3s
    Verify NavbarItems
    sleep    3s
    Verify page Navbar Items
    Page Should Contain Element    ${Browser_Window}
    Page Should Contain Element    ${Alerts}
    Page Should Contain Element    ${Frames}
    Page Should Contain Element    ${Nested_Frames}
    Page Should Contain Element    ${Modal_Dialogs}

    sleep    3s
    Footer Data Contain
    close browser
