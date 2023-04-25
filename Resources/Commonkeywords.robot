
*** Settings ***
Library    SeleniumLibrary
Variables    D:/PycharmProjects/testing/project/demoqa/PageObjects/locators.py

*** Keywords ***
Start Browser and Maximize
    [Documentation]   This keyword is used for start browser and maximize its window
    [Arguments]    ${siteurl}    ${browser}
    Open Browser    ${siteurl}    ${browser}
    Maximize Browser Window
    ${Title}=    Get Title
    log to console    ${Title}
    Should Be Equal As Strings    ${Title}    DEMOQA

Tools Image
    [Documentation]   This keyword is used to verify Tools Image
    sleep    3s
    Capture Element Screenshot    ${toolsimage_screenshot}
    Page Should Contain Element   ${tools_img}

Verify NavbarItems
    [Documentation]   This keyword is used to verify Navbar Items
    sleep    3s
    ${nav_items}=    Get Element Count    ${navbar_items}
    log to console    Nav Items Count:${nav_items}
#    @{navlist}    Create List
    FOR    ${i}    IN RANGE   1    ${nav_items}
        ${nav_text}=    Get Text    xpath:(//div[@class='left-pannel']/div/div)[${i}]
            log to console   The NavBar are: ${nav_text}
    END

Verify page Navbar Items
    [Documentation]   This keyword is used to verify Page Navbar Items
    sleep    3s
    ${pages_nav_items}=    Get Element Count    ${page_nav_items}
    log to console    Sub Nav Items Count:${pages_nav_items}
#    @{navlist}    Create List
    FOR    ${i}    IN RANGE   1    ${pages_nav_items}
        ${nav_text}=    Get Text    xpath:(//div[@class='element-list collapse show']/ul/li)[${i}]
            log to console   The NavBar Contains: ${nav_text}
    END

Verify Please Select Text
    [Documentation]   This keyword is used to verify Page Text
    sleep    3s
    Page Should Contain Element   ${select_text}
#


Verify Bookstore
    [Documentation]   This keyword is used to verify Book Store Data
    Page Should Contain Element    ${searchbox}
    Page Should Contain Element    ${loginbutton}
    Page Should Contain Element    ${table}
    ${rows}=    Get Element Count    ${table_row}             #Count the number of rows in a table
    ${cols}=    Get Element Count    ${table_col}       #Count the number of columns in a table
    log to console    Rows are: ${rows}
    log to console    Columns are: ${cols}
#    ${verifyheader}=    Table Header Should Contain    ${table_header}    1    Image
#    log to console    ${verifyheader}
    ${data}=    Get Text    ${table_row}             #Get data from a table
    ${data_exists}=    Run Keyword And Return Status    Should Not Be Empty    ${data}

    IF   ${data_exists}
        Log to console   Table data is present:${data}
    ELSE
        Log to console   No data is present
    END

    #column should contain
#    ${verifycolum}=    table column should contain    ${table_col}    2    Author
#    log to console    colums${verifycolum}
    #row should contain
#    ${verifyrow}=   table row should contain   xpath://table[@name='BookTable']    4    Learn JS
#    log to console    row${verifyrow}

Footer Data Contain
     [Documentation]   This keyword is used to verify Footer Part Data
     ${footer_part}=    Get Text    ${txt_footer}
#    log to console    ${footer_part}
     Should Be Equal As Strings    ${footer_part}    © 2013-2020 TOOLSQA.COM | ALL RIGHTS RESERVED.
#    log to console    ${footer_part}
