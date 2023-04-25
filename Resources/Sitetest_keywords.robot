
*** Settings ***
Library    SeleniumLibrary
Variables    D:/PycharmProjects/testing/project/demoqa/PageObjects/locators.py
Resource  D:/PycharmProjects/testing/project/demoqa/Resources/Commonkeywords.robot
Resource  D:/PycharmProjects/testing/project/demoqa/Resources/Elements_keyword.robot
Resource  D:/PycharmProjects/testing/project/demoqa/Resources/Forms_keyword.robot
Resource  D:/PycharmProjects/testing/project/demoqa/Resources/alert_windows_keywords.robot
Resource  D:/PycharmProjects/testing/project/demoqa/Resources/widgets_keywords.robot
Resource  D:/PycharmProjects/testing/project/demoqa/Resources/interactions_keywords.robot
Resource  D:/PycharmProjects/testing/project/demoqa/Resources/bookstore_keywords.robot

*** Keywords ***

Start Page Should Contain

    ${url}=    Get Location
    Should Be Equal As Strings    ${url}    https://demoqa.com/
    Tools Image
    Capture Element Screenshot    ${banner_screenshot}
    Page Should Contain Element    ${banner_img}
    Get Count of Cards
    Page Should Contain Element    ${elements_card}
    Page Should Contain Element    ${forms_card}
    Page Should Contain Element    ${alert_frame_windows_card}
    Page Should Contain Element    ${widgets_card}
    Page Should Contain Element    ${interactions_card}
    Page Should Contain Element    ${bookstore_card}
    Footer Data Contain

Get Count of Cards
    ${card_count}=    Get Element Count    ${card_counts}
    Log To Console   ${card_count}
#    @{Countcards}    Create List
    FOR    ${i}    IN RANGE    1    ${card_count}
        ${card_text}=    Get Text    xpath=(//div[@class='category-cards']/div)[${i}]
        Log To Console    ${card_text}
    END
