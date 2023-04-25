*** Settings ***
Library         SeleniumLibrary
Variables       D:/PycharmProjects/testing/project/demoqa/PageObjects/locators.py
Resource        D:/PycharmProjects/testing/project/demoqa/Resources/Commonkeywords.robot

*** Keywords ***
Verify Widgets Page
    [Documentation]   This Keyword is used to verify Widgets Page
    ${url}=     Get Location
    Should Be Equal As Strings    ${url}    https://demoqa.com/widgets
    Verify Please Select Text
    Tools Image
    ${page_text}=    Get Text    ${page_text}
    Log To Console    ${page_text}    Widgets
    Verify Navbar Items
    Verify Page Navbar Items
    Page Should Contain Element    ${Accordian}
    Page Should Contain Element    ${AutoComplete}
    Page Should Contain Element    ${Datepicker}
    Page Should Contain Element    ${Slider}
    Page Should Contain Element    ${Progress_bar}
    Page Should Contain Element    ${Tabs}
    Page Should Contain Element    ${Tool_Tips}
    Page Should Contain Element    ${Menu}
    Page Should Contain Element    ${Select_menu}

#    @{widget_names}=    Create List    Accordian    AutoComplete    Datepicker    Slider    Progress_bar    Tabs    Tool_Tips    Menu    Select_menu
#    FOR    ${widget_name}    IN    @{widget_names}
#         Wait Until Element Is Visible    xpath=//div[@class='element-list collapse show']//li[@class='btn btn-light' and text()='${widget_name}']
#        # Add your test steps here to verify the widget data
##        Click Element    ${widget_name}
#        log to console    ${widget_name}
#    END

    Footer Data Contain
    Close Browser
