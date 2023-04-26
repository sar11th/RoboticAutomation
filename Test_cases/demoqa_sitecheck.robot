*** Settings ***
Library  SeleniumLibrary

Resource  D:/PycharmProjects/testing/project/demoqa/Resources/Sitetest_keywords.robot

*** Variables ***
${browser}    chrome
${siteurl}    https://demoqa.com/
${login_url}    https://demoqa.com/login
${txt_username}    jhonmac11
${txt_password}    Jhonmac@1234
${login_error}    Invalid username or password!
${txt_firstname}    Jhon
${txt_lastname}    Mac
${captcha_error}    Please verify reCaptcha to register!
${password_error}    Passwords must have at least one non alphanumeric character, one digit ('0'-'9'), one uppercase ('A'-'Z'), one lowercase ('a'-'z'), one special character and Password must be eight characters or longer.
*** Test Cases ***
Verify Test
    [Documentation]   This Test Case is used to verify site contents
    [Tags]    starttest
    Start Browser and Maximize    ${siteurl}    ${browser}
    sleep    3s
    Start Page Should Contain
    close browser
    Log   Successfully Completed Verify Test

Verify Elements Page Contains
    [Documentation]   This Test Case is used to verify Elements Page
    [Tags]   elements
    Start Browser and Maximize    ${siteurl}    ${browser}
    sleep    3s
    click element    ${elements_card}
    sleep    3s
    Verify Elements Page
    sleep    3s
    Close Browser
    Log   Successfully Completed Verify Elements Page Contains

Verify Forms Page Contains
    [Documentation]   This Test Case is used to verify Forms Page
    [Tags]   forms
    Start Browser and Maximize    ${siteurl}    ${browser}
    sleep    3s
    click element    ${forms_card}
    sleep    3s
    Verify Forms Page
    sleep    3s
    Close Browser
    Log   Successfully Completed Verify Forms Page Contains

Verify Alert Windows Page Contains
    [Documentation]   This Test Case is used to verify Alert Windows Page
    [Tags]   alert
    Start Browser and Maximize    ${siteurl}    ${browser}
    sleep    3s
    click element    ${alert_frame_windows_card}
    sleep    3s
    Verify Alert Windows Page
    sleep    3s
    Close Browser
    Log   Successfully Completed Verify Alert Windows Page Contains

Verify Widgets Page Contains
    [Documentation]   This Test Case is used to verify widgets Page
    [Tags]   widgets
    Start Browser and Maximize    ${siteurl}    ${browser}
    sleep    3s
    click element    ${widgets_card}
    sleep    3s
    Verify Widgets Page
    sleep    3s
    Close Browser
    Log   Successfully Completed Verify Widgets Page Contains

Verify ineractions Page Contains
    [Documentation]   This Test Case is used to verify ineractions Page
    [Tags]   interactions
    Start Browser and Maximize    ${siteurl}    ${browser}
    sleep    3s
    click element    ${interactions_card}
    sleep    3s
    Verify ineractions Page
    sleep    3s
    Close Browser
    Log   Successfully Completed Verify ineractions Page Contains

Verify book store Page Contains
    [Documentation]   This Test Case is used to verify book store page test
    [Tags]   bookstore
    Start Browser and Maximize    ${siteurl}    ${browser}
    sleep    3s
    click element    ${bookstore_card}
    sleep    3s
    Verify Book Store Page

    sleep    3s
    Close Browser
    Log   Successfully Completed Verify book store Page Contains

Verify Textbox Page
    [Documentation]   This Test Case is used to verify Textbox
    [Tags]   textbox
    Start Browser and Maximize    ${siteurl}    ${browser}
    sleep    3s
    click element    ${elements_card}
    sleep    3s
    Verify Textbox
    sleep    3s
    Enter Fullname    ${txt_fullname}
    sleep    3s
    Enter Email    ${txt_email}
    sleep    3s
    Enter Current address    ${txt_currentaddress}
    sleep    3s
    Enter Permanent address    ${txt_permanentaddress}
    sleep    3s
    execute javascript    window.scrollTo(0,250)
    Click Submit
    Verify Textbox Data
#    Error message should be visible    ${timeout}
    Close Browser
    Log   Successfully Completed Verify Textbox Page


Verify Checkbox Page
    [Documentation]   This Test Case is used to verify Checkbox
    [Tags]   checkbox
    Start Browser and Maximize    ${siteurl}    ${browser}
    sleep    3s
    click element    ${elements_card}
    sleep    3s
    Verify Checkbox
    sleep    3s
    Verify Checkbox Test
#    Error message should be visible    ${timeout}
    Close Browser
    Log   Successfully Completed Verify Checkbox Page

Verify Radiobutton Page
    [Documentation]   This Test Case is used to verify Radiobutton
    [Tags]   radiobutton
    Start Browser and Maximize    ${siteurl}    ${browser}
    sleep    3s
    click element    ${elements_card}
    sleep    3s
    Verify RadioButton
    sleep    3s
#    Error message should be visible    ${timeout}
    Close Browser
    Log   Successfully Completed Verify Radiobutton Page

Verify BookStore Test
    [Documentation]   This Test Case is used to verify BookStore
    [Tags]   bookstoretest
    Start Browser and Maximize    ${siteurl}    ${browser}
#    sleep    3s
    click element    ${bookstore_card}
#    sleep    3s
    Verify BookStore testing
    Click Book Login Page Should Include
    Enter Username    hghg
    Enter Password    hgfh
    Click loginSubmit
    Error Message For login    ${login_error}
    Log   Successfully Completed Verify BookStore Test


verify newuser
    [Documentation]   This Test Case is used to verify newuser
    [Tags]    register
#    Start Browser and Maximize    https://demoqa.com/register    ${browser}
    click newuser
    Log   Successfully Completed verify newuser

verify Register All Fields Are Empty
    [Documentation]   This Test Case is used to verify Register All Fields Are Empty
    [Tags]   registerTestValid
#    Start Browser and Maximize    https://demoqa.com/register    ${browser}
    Enter Firstname    ${EMPTY}
    Enter Lastname    ${EMPTY}
    Enter Usernamenewuser    ${EMPTY}
    Enter Passwordnewuser    ${EMPTY}
    execute javascript    window.scrollTo(0,250)
#    click element    ${captcha}
    Click registersubmit



verify Register Empty Firstname
    [Documentation]   This Test Case is used to verify Register Empty Firstname
    [Tags]   registerTestValid
#    Start Browser and Maximize    https://demoqa.com/register    ${browser}
    Enter Firstname    ${EMPTY}
    Enter Lastname    ${txt_lastname}
    Enter Usernamenewuser    ${txt_username}
    Enter Passwordnewuser    ${txt_password}
    execute javascript    window.scrollTo(0,250)
#    click element    ${captcha}
    Click registersubmit
#
verify Register Empty Lastname
    [Documentation]   This Test Case is used to verify Register Empty Lastname
    [Tags]   registerTestValid
#    Start Browser and Maximize    https://demoqa.com/register    ${browser}
    Enter Firstname    ${txt_firstname}
    Enter Lastname    ${EMPTY}
    Enter Usernamenewuser    ${txt_username}
    Enter Passwordnewuser    ${txt_password}
    execute javascript    window.scrollTo(0,250)
#    click element    ${captcha}
    Click registersubmit

verify Register Empty Username
    [Documentation]   This Test Case is used to verify Register Empty Username
    [Tags]   registerTestValid
#    Start Browser and Maximize    https://demoqa.com/register    ${browser}
    Enter Firstname    ${txt_firstname}
    Enter Lastname    ${txt_lastname}
    Enter Usernamenewuser    ${EMPTY}
    Enter Passwordnewuser    ${txt_password}
    execute javascript    window.scrollTo(0,250)
#    click element    ${captcha}
    Click registersubmit

verify Register Empty Password
    [Documentation]   This Test Case is used to verify Register Empty Password
    [Tags]   registerTestValid
#    Start Browser and Maximize    https://demoqa.com/register    ${browser}
    Enter Firstname    ${txt_firstname}
    Enter Lastname    ${txt_lastname}
    Enter Usernamenewuser    ${txt_password}
    Enter Passwordnewuser    ${EMPTY}
#    click element    ${captcha}
    execute javascript    window.scrollTo(0,250)
    Click registersubmit

#    Close Browser



verify Register Invalid
    [Documentation]   This Test Case is used to verify Register Invalid Test
    [Tags]   registerTestcatcha
    Start Browser and Maximize    https://demoqa.com/register    ${browser}
    Enter Firstname    ${txt_firstname}
    Enter Lastname    ${txt_lastname}
    Enter Usernamenewuser    ${txt_username}
    Enter Passwordnewuser    ${txt_password}
    execute javascript    window.scrollTo(0,250)
    Click registersubmit
    Error Mesage For captchanewuser    ${captcha_error}
    Close Browser


verify Register invalidpassword
    [Documentation]   This Test Case is used to verify Register With Invalidpassword
    [Tags]   registerTestPassword
#    set selenium speed    2s
    Start Browser and Maximize    https://demoqa.com/register    ${browser}
    Enter Firstname    ${txt_firstname}
    Enter Lastname    ${txt_lastname}
    Enter Usernamenewuser    ${txt_username}
    Enter Passwordnewuser    fgfhhf
    execute javascript    window.scrollTo(0,250)
    click element    ${captcha}
    Click registersubmit
#    sleep    3s
#    Wait Until Page Contains Element     ${password_error}
    Error Mesage For newuser    ${password_error}
#    close browser
    Log    Successfully Completed verify Register invalidpassword
    Close Browser




verify Register Valid
    [Documentation]   This Test Case is used to verify Register valid Test
    [Tags]   registervalid
#    set selenium speed    1s
    Start Browser and Maximize    https://demoqa.com/register    ${browser}
#    sleep    3s
#    Start Page Should Contain
    Enter Firstname    ${txt_firstname}
    Enter Lastname    ${txt_lastname}
    Enter Usernamenewuser    ${txt_username}
    Enter Passwordnewuser    ${txt_password}
    execute javascript    window.scrollTo(0,250)
    Click Element    ${captcha}
    Click registersubmit
   
    Click element    ${newuser_backtologin}
    sleep    3s
    Log    Successfully Completed verify Register Valid
    Close Browser



Verify Login With Invalid User And Valid Password
    [Documentation]   This Test Case is used to Verify Login With Invalid User And Valid Password
    set selenium speed    1s
    [Tags]    logingtest
    Start Browser and Maximize    ${login_url}    ${browser}
    Enter Username     invalid_user
    Enter Password     ${txt_password}
    click element    ${loginbutton}
    Error Message For login    ${login_error}
    Close Browser
    Log    Succesfully Compeleted Verify Login With Invalid User And Valid Password

Verify Login With Valid User And Invalid Password
    [Documentation]   This Test Case is used to Verify Login With Valid User And Invalid Password
    set selenium speed    1s

    [Tags]    logingtest
    Start Browser and Maximize    ${login_url}    ${browser}
    Enter Username     ${txt_username}
    Enter Password     hfh
    click element    ${loginbutton}
    Error Message For login    ${login_error}
    Close Browser
    Log    Succesfully Compeleted Verify Login With Valid User And Invalid Password

Verify Login With Valid User And Empty Password
    [Documentation]   This Test Case is used to Verify Login With Valid User And Empty Password
    set selenium speed    1s
    [Tags]    logingtest
    Start Browser and Maximize    ${login_url}    ${browser}
    Enter Username     ${txt_username}
    Enter Password     ${EMPTY}
    click element    ${loginbutton}
    Close Browser
    Log    Succesfully Compeleted Verify Login With Valid User And Empty Password

Verify Login With Empty User And Valid Password
    [Documentation]   This Test Case is used to Verify Login With Empty User And Valid Password
    set selenium speed    1s
    [Tags]    logingtest
    Start Browser and Maximize    ${login_url}    ${browser}
    Enter Username     ${EMPTY}
    Enter Password     ${txt_password}
    click element    ${loginbutton}
    Close Browser
    Log    Succesfully Compeleted Verify Login With Empty User And Valid Password

Verify Login With Empty User And InValid Password
    [Documentation]   This Test Case is used to Verify Login With Empty User And InValid Password
    set selenium speed    1s
    [Tags]    logingtest
    Start Browser and Maximize    ${login_url}    ${browser}
    Enter Username     ${EMPTY}
    Enter Password     jhkhgg
    click element    ${loginbutton}
    Close Browser
    Log    Succesfully Compeleted Verify Login With Empty User And InValid Password

Verify Login With Empty User And Empty Password
    [Documentation]   This Test Case is used to Verify Login With Empty User And Empty Password
    set selenium speed    1s
    [Tags]    logingtest
    Start Browser and Maximize    ${login_url}    ${browser}
    Enter Username     ${EMPTY}
    Enter Password     ${EMPTY}
    click element    ${loginbutton}
    Close Browser
    Log    Succesfully Compeleted Verify Login With Empty User And Empty Password

Verify Login With Wrong User And Empty Password
    [Documentation]   This Test Case is used to Verify Login With Wrong User And Empty Password
    set selenium speed    1s
    [Tags]    logingtest
    Start Browser and Maximize    ${login_url}    ${browser}
    Enter Username     invalid_user
    Enter Password     ${EMPTY}
    click element    ${loginbutton}
    Close Browser
    Log    Succesfully Compeleted Verify Login With Wrong User And Empty Password

Verify Login With Wrong User And Wrong Password
    [Documentation]   This Test Case is used to Verify Login With Wrong User And Wrong Password
    set selenium speed    1s
    [Tags]    logingtest
    Start Browser and Maximize    ${login_url}    ${browser}
    Enter Username     invalid_user
    Enter Password     jdkhaksh
    click element    ${loginbutton}
    Error Message For login    ${login_error}
    Log    Succesfully Compeleted Verify Login With Wrong User And Wrong Password
#    Close Browser

Verify Login With Valid Passowrd and Valid Username
    [Documentation]   This Test Case is used to Verify Login With Valid Passowrd and Valid Username
    [Tags]   registervalidlogin
    verify Login Valid
#    sleep    3s
    Verify Profile Page
    sleep    3s
    execute javascript    window.scrollTo(0,250)
    Click Element    ${addtocollections}
    alert should be present    Book added to your collection.
#    Handle Alert    action=ACCEPT
    sleep    3s
    Click Element    ${backtobookdetails}
    sleep    3s
    execute javascript    window.scrollTo(0,250)
    Click Link    ${click_programming}
    ${bookdetailsurl}=    Get Location
    Should Be Equal As Strings    ${bookdetailsurl}    https://demoqa.com/books?book=9781491950296
    Book Details with logout
    Page Should Contain Element    ${bookstore_username}
    ${page_text_name}=     Get Text    ${fetched_username}
    log to console    ${page_text_name}    jhonmas11
    Log    Successfully Completed verify Register Valid

#first code staring
Logout and Login Test
    [Documentation]   This Test Case is used to verify Logout and Login
    [Tags]   logoutandlogin
    sleep    3s
    click element    ${details_logout}
    verify Login Valid
    sleep    3s
#    Book Details with logout
    execute javascript    window.scrollTo(0,250)
    sleep    3s
    click element    ${delete_icon}
    sleep    3s
    Wait Until Page Contains Element     ${modal_alert}
    Click Element    ${modal_ok}
    sleep    3s
    Handle Alert    action=ACCEPT
    Click Button    ${delete_all_books}
    Wait Until Page Contains Element     ${modal_alert}
    Click Element    ${modal_ok}
    sleep    3s
    Handle Alert    action=ACCEPT
#    sleep    3s
    Log    Successfully Completed Logout and Login
    Close Browser

#    Click Button    ${delete_account}                          #delete account session
#    Wait Until Page Contains Element     xpath://div[@class='modal-content']
#    Click Element    xpath://div[@class='modal-content']/div/button[@id='closeSmallModal-ok']
#    sleep    3s
#    Handle Alert    action=ACCEPT
#    sleep    4s
#    Wait Until Page Contains Element     xpath://div[@class='text-right col-md-5 col-sm-12']//button[@id='submit' and contains(text(),'Log out')]
#    Click Element    xpath://div[@class='text-right col-md-5 col-sm-12']//button[@id='submit' and contains(text(),'Log out')]




#    Page Should Contain Element    ${bookstore_username}
#    ${page_text_name}=     Get Text    ${fetched_username}
#    log to console    ${page_text_name}    jhonmac11
#    Click Element    ${addtocollections}
#    sleep    3s
#    alert should be present    Book already present in the your collection!

#Verify Login With Valid Password and Valid Username
#    [Documentation]   This Test Case is used to Verify Login With Valid Password and Valid Username
#    [Tags]   registervalidlogin
#    verify Login Valid
##    sleep    3s
#    Verify Profile Page
#    sleep    3s
#    execute javascript    window.scrollTo(0,250)
#    Click Element    ${addtocollections}
#    alert should be present    Book added to your collection.
#    sleep    3s
#    Click Element    ${backtobookdetails}
#    sleep    3s
#    execute javascript    window.scrollTo(0,250)
#    Click Link    ${click_programming}
#    ${bookdetailsurl}=    Get Location
#    Should Be Equal As Strings    ${bookdetailsurl}    https://demoqa.com/books?book=9781491950296
#    Book Details with logout
#    sleep    3s
#    Page Should Contain Element    ${bookstore_username}
#    ${page_text_name}=     Get Text    ${fetched_username}
#    log to console    ${page_text_name}    valid_username
#    Log    Successfully Completed verify Register Valid
#
#Logout and Login Test
#    [Documentation]   This Test Case is used to verify Logout and Login
#    [Tags]   logoutandlogin
#    Wait Until Page Contains Element    ${profile_logout}
#    Click Element    ${profile_logout}
##    Wait Until Page Contains Element    xpath://button[@id='submit']
##    Click Element    xpath://button[@id='submit']
#    verify Login Valid
#    Wait Until Page Contains Element    ${bookstore_username}
#    execute javascript    window.scrollTo(0,250)
#    Click Element    ${delete_icon}
#    sleep    3s
#    Wait Until Page Contains Element     ${modal_alert}
#    Click Element    ${modal_ok}
#    sleep    3s
#    Handle Alert    action=ACCEPT
#    Click Button    ${delete_all_books}
#    Wait Until Page Contains Element     ${modal_alert}
#    Click Element    ${modal_ok}
#    sleep    3s
#    #    sleep    3s
#    Log    Successfully Completed Logout and Login

#    Click Button    ${delete_account}                          #delete account session
#    Wait Until Page Contains Element     xpath://div[@class='modal-content']
#    Click Element    xpath://div[@class='modal-content']/div/button[@id='closeSmallModal-ok']
#    sleep    3s
#    Handle Alert    action=ACCEPT
#    sleep    4s
#    Wait Until Page Contains Element     xpath://div[@class='text-right col-md-5 col-sm-12']//button[@id='submit' and contains(text(),'Log out')]
#    Click Element    xpath://div[@class='text-right col-md-5 col-sm-12']//button[@id='submit' and contains(text(),'Log out')]



*** Keywords ***
verify Login Valid
    [Documentation]   This Test Case is used to verify Valid Login
#    set selenium speed    1s
    Enter Username     ${txt_username}
    Enter Password     ${txt_password}
    click element    ${loginbutton}

























