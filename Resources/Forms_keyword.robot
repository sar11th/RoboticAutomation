
*** Settings ***
Library    SeleniumLibrary
Variables    D:/PycharmProjects/testing/project/demoqa/PageObjects/locators.py
Resource  D:/PycharmProjects/testing/project/demoqa/Resources/Commonkeywords.robot

*** Keywords ***
Verify Forms Page
    ${url}=    Get Location
    Should Be Equal As Strings    ${url}    https://demoqa.com/forms
    Verify Please Select Text
    Tools Image
    ${page_text_name}=     Get Text    ${page_text}
    log to console    ${page_text_name}    Forms
    Verify NavbarItems
    Verify page Navbar Items
    Page Should Contain Element    ${Practice_Form}
    Footer Data Contain
    close browser






