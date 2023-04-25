*** Settings ***
Library         SeleniumLibrary
Variables       D:/PycharmProjects/testing/project/demoqa/PageObjects/locators.py
Resource        D:/PycharmProjects/testing/project/demoqa/Resources/Commonkeywords.robot

*** Keywords ***
Verify Book Store Page
    [Documentation]   This Keyword is used to verify Book Store Page
    ${url}=         Get Location
    Should Be Equal As Strings    ${url}    https://demoqa.com/books
    Tools Image
    ${page_text_name}=    Get Text    ${page_text}
    log to console    ${page_text_name}    Book Store
    sleep    3s
    Verify Navbar Items
    Verify page Navbar Items
    Page Should Contain Element     ${Login}
#    log to console    ${s}
    Page Should Contain Element    ${Book_Store}
    Page Should Contain Element    ${Profile}
    Page Should Contain Element    ${Book_Store_API}
    Verify Bookstore

    sleep    3s
    Footer Data Contain
    Close Browser

Verify BookStore testing
    [Documentation]   This Keyword is used to verify BookStore testing
#    click element    ${elements_card}
    ${url}=    Get Location
    Should Be Equal As Strings    ${url}    https://demoqa.com/books

    Tools Image
    ${page_text_name}=     Get Text    ${page_text}
    log to console    ${page_text_name}    Book Store
#    sleep    3s
    input text    id=searchBox    Speaking JavaScript
    sleep    3s
    click element    ${search_book}
    click element    ${booklink}
    ${bookdetailsurl}=    Get Location
    Should Be Equal As Strings    ${bookdetailsurl}    https://demoqa.com/books?book=9781449365035
    Book Details Page Shlould Contains
#    Page Should Contain Element    xpath://button[@id='addNewRecordButton']
#    Wait Until Element Is Visible    xpath://button[@id='addNewRecordButton']    timeout=10s
#    click element    xpath://button[@id='addNewRecordButton']
#    sleep    3s
#    click element    ${booklink}
#    ${bookdetailsurl}=    Get Location
#    Should Be Equal As Strings    ${bookdetailsurl}    https://demoqa.com/books?book=9781449365035
    click element    ${loginbutton}

Click Book Login Page Should Include
    [Documentation]   This Keyword is used to verify click Book Login Page Contains
    ${bookloginurl}=    Get Location
    Should Be Equal As Strings    ${bookloginurl}    https://demoqa.com/login
    Tools Image
    ${page_text_name}=     Get Text    ${page_text}
    log to console    ${page_text_name}    Login
#    sleep    1s
    Page Should Contain Element    ${bookstore_welcome}
    Page Should Contain Element    ${loginbookstore}
    Page Should Contain Element    ${bookstore_username}
    Page Should Contain Element    ${bookstore_password}
    Page Should Contain Element    ${bookstore_input_username}
    Page Should Contain Element    ${bookstore_input_password}
    Page Should Contain Element    ${loginbutton}
    Page Should Contain Element    ${click_newuser}

click newuser
    [Documentation]   This Keyword is used to verify click newuser
    click element    ${click_newuser}
    ${booknewuserurl}=    Get Location
    Should Be Equal As Strings    ${booknewuserurl}    https://demoqa.com/register
    Tools Image
    ${page_text_name}=     Get Text    ${page_text}
    log to console    ${page_text_name}    Register
#    sleep    1s
    Page Should Contain Element    ${new_userregister}
    Page Should Contain Element    ${first_name}
    Page Should Contain Element    ${last_name}
    Page Should Contain Element    ${username_newuser}
    Page Should Contain Element    ${password_newuser}
    Page Should Contain Element    ${input_firtname}
    Page Should Contain Element    ${input_lastname}
    Page Should Contain Element    ${input_txt_username}
    Page Should Contain Element    ${input_txt_password}
    Page Should Contain Element    ${newuser_register}
    Page Should Contain Element    ${newuser_backtologin}
#    Element Should Not Be Visible    "xpath://html/body/div[3]"
#    Switch To Frame    xpath=//iframe[@title="recaptcha challenge expires in two minutes"]
## manually solve captcha
#    Switch To Default Content
#    Page Should Contain Element    ${captcha}

#login user start

Enter Username
    [Documentation]   This Keyword is used to verify usernaame
    [Arguments]    ${username}
    Wait Until Page Contains Element    ${bookstore_input_username}
    Input Text    id=userName    ${username}

Enter Password
    [Documentation]   This Keyword is used to verify Password
    [Arguments]    ${password}
    Wait Until Page Contains Element    ${bookstore_input_password}
    Input Text    id=password   ${password}

Click loginSubmit
    [Documentation]   This Keyword is used to verify login Submit button
    Click Element    ${loginbutton}

Error Message For login
    [Documentation]   This Keyword is used to verify Error Message For Login
    [Arguments]    ${expected_message}
    Sleep    3s
    ${message}=    Get Text    ${loginpage_error_message}
    Log To Console    Actual:${message}
    Log To Console    Expected:${expected_message}
    Should Contain    ${message}    ${expected_message}

#end loginuser

#starting userregister

Enter Firstname
    [Documentation]   This Keyword is used to Enter Firstname
    [Arguments]    ${firstname}
    Wait Until Page Contains Element    ${input_firtname}
    Input Text    id=firstname    ${firstname}

Enter Lastname
    [Documentation]   This Keyword is used to Enter Lastname
    [Arguments]    ${lastname}
    Wait Until Page Contains Element    ${input_lastname}
    Input Text    id=lastname   ${lastname}

Enter Usernamenewuser
    [Documentation]   This Keyword is used to Enter Username
    [Arguments]    ${usernames}
    Wait Until Page Contains Element    ${input_txt_username}
    Input Text    id=userName   ${usernames}

Enter Passwordnewuser
    [Documentation]   This Keyword is used to Enter Password
    [Arguments]    ${passwords}
    Wait Until Page Contains Element    ${input_txt_password}
    Input Text    id=password   ${passwords}


Click registersubmit
    [Documentation]   This Keyword is used to click registersubmit
    Wait Until Page Contains Element    ${register_to_bookstore_registerbtn}
    Click Button    ${register_to_bookstore_registerbtn}

Error Mesage For captchanewuser
    [Documentation]   This Keyword is used to verify error message for captcha
    [Arguments]    ${expected_message}
    Sleep    3s
    Wait Until Page Contains Element    ${book_to_store_register_captcha_error_lbl}
    ${message}=    Get Text    ${book_to_store_register_captcha_error_lbl}
    Log To Console    Actual:${message}
    Log To Console    Expected:${expected_message}
    Should Contain    ${message}    ${expected_message}

Error Mesage For newuser
    [Documentation]   This Keyword is used to verify error message for password
    [Arguments]    ${expected_message}

    Wait Until Page Contains Element    ${book_to_store_register_password_error_lbl}
    ${password_message}=    Get Text    ${book_to_store_register_password_error_lbl}
    Log To Console    Actual:${password_message}
    Log To Console    Expected:${expected_message}
    Should Contain    ${password_message}    ${expected_message}

#end userregister

Verify Profile Page
    [Documentation]   This Keyword is used to verify profile page
#    Click Element    ${click_newuser}
#    sleep    3s
    ${profileurl}=    Get Location
    Should Be Equal As Strings    ${profileurl}    https://demoqa.com/profile
    Tools Image
    ${page_text_name}=     Get Text    ${page_text}
    log to console    ${page_text_name}    Profile
    execute javascript    window.scrollTo(0,250)
    Page Should Contain Element    ${books_profile}
    Page Should Contain Element    ${searchbox}
    Page Should Contain Element    ${profile_username}
    Page Should Contain Element    ${profile_logout }
    Page Should Contain Element    ${gotobookstore}
    Page Should Contain Element    ${delete_account}
    Page Should Contain Element    ${delete_all_books}
    Page Should Contain Element    ${fetched_username}
    ${page_text_name}=     Get Text    ${fetched_username}
    log to console    ${page_text_name}    jhonmac11
    Page Should Contain Element    ${table}
    ${rows}=    Get Element Count    ${table_row}             #Count the number of rows in a table
    ${cols}=    Get Element Count    ${table_col}       #Count the number of columns in a table
    log to console    Rows are: ${rows}
    log to console    Columns are: ${cols}

    ${data}=    Get Text    ${table_row}

    ${data_exists}=    Run Keyword And Return Status    Should Not Be Empty    ${data}

    IF   ${data_exists}
        Log to console   Table data is present:${data}
    ELSE
        Log to console   No data is present
    END

    #Get data from a table
#    log to console    Table Datas :${data}
    execute javascript    window.scrollTo(0,250)
    Click Button    ${delete_all_books}
    Wait Until Page Contains Element     ${modal_alert}
    Click Element    ${modal_ok}
    sleep    3s
    Handle Alert    action=ACCEPT

    Wait Until Page Contains Element    ${gotobookstore}
    Click Element    ${gotobookstore}
    Wait Until Page Contains Element    ${click_booklink}
    Click Link    ${click_booklink}
    ${bookdetailsurl}=    Get Location
    Should Be Equal As Strings    ${bookdetailsurl}    https://demoqa.com/books?book=9781449331818
    Book Details with logout
    Page Should Contain Element    ${bookstore_username}
    ${page_text_name}=     Get Text    ${fetched_username}
    log to console    ${page_text_name}    jhonmac11
#    Handle Alert    accept



    # switch to recaptcha iframe and solve captcha
#    Switch To Frame    xpath=//iframe[@title="recaptcha challenge expires in two minutes"]
#     # manually solve captcha
#    Switch To Default Content

     # switch back to main page and click element to add book to collection
#     Click Element    ${addtocollections}
# handle alert    accept
# alert should be present    User not authorized!

#    handle alert    accept
#    alert should be present    User not authorized!

Book Details with logout
    [Documentation]    This Keyword is used to verify the book details After user login
    Page Should Contain Element    ${ISBN}
    Page Should Contain Element    ${Title}
    Page Should Contain Element    ${SubTitle}
    Page Should Contain Element    ${Author}
    Page Should Contain Element    ${Publisher}
    Page Should Contain Element    ${Totalpages}
    Page Should Contain Element    ${Description}
    Page Should Contain Element    ${Website}

    Page Should Contain Element    ${ISBN_Contain}
    Page Should Contain Element    ${Title_Contain}
    Page Should Contain Element    ${SubTitle_Contain}
    Page Should Contain Element    ${Author_Contain}
    Page Should Contain Element    ${Publisher_Contain}
    Page Should Contain Element    ${Totalpages_contain}
    Page Should Contain Element    ${Description_contain}
    Page Should Contain Element    ${Website_contain}
    Page Should Contain Element    ${backtostore_button}
    Page Should Contain Element    ${details_logout}



Book Details Page Shlould Contains
    [Documentation]   This Keyword is used to verify the book details Before user login
    Page Should Contain Element    ${ISBN}
    Page Should Contain Element    ${Title}
    Page Should Contain Element    ${SubTitle}
    Page Should Contain Element    ${Author}
    Page Should Contain Element    ${Publisher}
    Page Should Contain Element    ${Totalpages}
    Page Should Contain Element    ${Description}
    Page Should Contain Element    ${Website}

    Page Should Contain Element    ${ISBN_Contain}
    Page Should Contain Element    ${Title_Contain}
    Page Should Contain Element    ${SubTitle_Contain}
    Page Should Contain Element    ${Author_Contain}
    Page Should Contain Element    ${Publisher_Contain}
    Page Should Contain Element    ${Totalpages_contain}
    Page Should Contain Element    ${Description_contain}
    Page Should Contain Element    ${Website_contain}
    Page Should Contain Element    ${backtostore_button}
    Page Should Contain Element    ${loginbutton}



