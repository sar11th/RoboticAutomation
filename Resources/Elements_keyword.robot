
*** Settings ***
Library    SeleniumLibrary
Variables    D:/PycharmProjects/testing/project/demoqa/PageObjects/locators.py
Resource  D:/PycharmProjects/testing/project/demoqa/Resources/Commonkeywords.robot


*** Variables ***
${txt_fullname}    standard_user
${txt_email}    hietr@gmail.com
${txt_currentaddress}    homeone
${txt_permanentaddress}    homeonesdaily
${checkbox_one}    desktop notes commands
${Radio_text}    Yes
*** Keywords ***

Verify Elements Page
    ${url}=    Get Location
    Should Be Equal As Strings    ${url}    https://demoqa.com/elements
    Verify Please Select Text
    Tools Image
    ${page_text_name}=     Get Text    ${page_text}
    log to console    ${page_text_name}    Elements
    Verify NavbarItems
    Verify page Navbar Items
    Page Should Contain Element    ${Textbox}
    Page Should Contain Element    ${Checkbox}
    Page Should Contain Element    ${Radio_Button}
    Page Should Contain Element    ${Web_Tables}
    Page Should Contain Element    ${Buttons}
    Page Should Contain Element    ${Links}
    Page Should Contain Element    ${Broken_links_images}
    Page Should Contain Element    ${Upload_and_download}
    Page Should Contain Element    ${Dynamic_properties}
    Footer Data Contain
    close browser
Verify Textbox
#    click element    ${elements_card}
    ${url}=    Get Location
    Should Be Equal As Strings    ${url}    https://demoqa.com/elements
    Verify Please Select Text
    Tools Image
    ${page_text_name}=     Get Text    ${page_text}
    log to console    ${page_text_name}    Elements
    click element    ${Textbox}
    ${url}=    Get Location
    Should Be Equal As Strings    ${url}    https://demoqa.com/text-box
    Tools Image
    ${page_text_name}=     Get Text    ${page_text}
    log to console    ${page_text_name}    Text Box
    Page Should Contain Element    ${Textbox_username}
    Page Should Contain Element    ${Textbox_email}
    Page Should Contain Element    ${Textbox_currentaddress}
    Page Should Contain Element    ${Textbox_permanentaddress}
    Page Should Contain Element    ${input_username}
    Page Should Contain Element    ${input_email}
    Page Should Contain Element    ${input_currentaddress}
    Page Should Contain Element    ${input_permanentaddress}
    Page Should Contain Element    ${textbox_submit}

Enter Fullname
    [Arguments]    ${fullname}
    Wait Until Page Contains Element    ${input_username}
    Input Text    id=userName    ${fullname}

Enter Email
    [Arguments]    ${email}
    Wait Until Page Contains Element    ${input_email}
    Input Text    id=userEmail   ${email}

Enter Current address
    [Arguments]    ${currentaddress}
    Wait Until Page Contains Element    ${input_currentaddress}
    Input Text    id=currentAddress   ${currentaddress}

Enter Permanent address
    [Arguments]    ${permanentaddress}
    Wait Until Page Contains Element    ${input_permanentaddress}
    Input Text    id=permanentAddress   ${permanentaddress}

Click Submit
    Click Element    ${textbox_submit}
Verify Textbox Data
    ${fullname} =    Get Text    ${txt_input_name}
    log to console    ${fullname}
    ${email} =    Get Text    ${txt_input_email}
    ${currentaddress} =   Get Text    ${txt_input_currentaddress}
    ${permanentaddress} =   Get Text    ${txt_input_permanentaddress}
    Should Be Equal As Strings    ${fullname}    Name:${txt_fullname}
    Should Be Equal As Strings    ${email}    Email:${txt_email}
    Should Be Equal As Strings    ${currentaddress}    Current Address :${txt_currentaddress}
    Should Be Equal As Strings    ${permanentaddress}    Permananet Address :${txt_permanentaddress}


Verify Checkbox
#    click element    ${elements_card}
    ${url}=    Get Location
    Should Be Equal As Strings    ${url}    https://demoqa.com/elements
    Verify Please Select Text
    Tools Image
    ${page_text_name}=     Get Text    ${page_text}
    log to console    ${page_text_name}    Elements
    click element    ${Checkbox}
    ${url}=    Get Location
    Should Be Equal As Strings    ${url}    https://demoqa.com/checkbox
    Tools Image
    ${page_text_name}=     Get Text    ${page_text}
    log to console    ${page_text_name}    Check Box
    Page Should Contain Element    ${check_arrow}
    Page Should Contain Element    ${check_square}
    Page Should Contain Element    ${check_folder_icon}
    Page Should Contain Element    ${check_title}
    Page Should Contain Element    ${check_plus_icon}
    Page Should Contain Element    ${check_neagative_icon}

Verify Checkbox Test
#    set selenium speed    2s
    click element    ${check_arrow}
    sleep    3s
    Wait Until Page Contains Element    ${click_desktop}
    sleep    3s
    click element    ${click_desktop}
#    Select Checkbox    Desktop
#    ${test}=    Get Text    ${click_desktop}
#    Should Be Equal As Strings    ${test}    You have selected :${checkbox_one}
    Page Should Contain Element    ${result_checkbox}
    sleep    3s
    Wait Until Page Contains Element    ${click_documents}
    click element    ${click_documents}
#    Select Checkbox    Documents
#    ${test}=    Get Text    xpath://*[@id="tree-node"]/ol/li/ol/li[1]/ol/li
#    log to console    ${test}
    Page Should Contain Element    ${result_checkbox}

#    ${radiobutton_text}=    Get Text    xpath://div[@id='result']
#    Should Be Equal As Strings    ${radiobutton_text}    You have selected :${checkbox_one}

Verify RadioButton
#    click element    ${elements_card}
    ${url}=    Get Location
    Should Be Equal As Strings    ${url}    https://demoqa.com/elements
    Verify Please Select Text
    Tools Image
    ${page_text_name}=     Get Text    ${page_text}
    log to console    ${page_text_name}    Elements
    click element    ${Radio_Button}
    ${url}=    Get Location
    Should Be Equal As Strings    ${url}    https://demoqa.com/radio-button
    Tools Image
    ${page_text_name}=     Get Text    ${page_text}
    log to console    ${page_text_name}    Radio Button
    Page Should Contain Element    ${radiobutton_text}
    Page Should Contain Element    ${enabled_radiobutton}
    Page Should Contain Element    ${disabled_radiobutton}
    sleep    3s
    click element    ${enabled_radiobutton}
    ${radiobutton_text}=    Get Text    ${enabled_radiobutton}
    Should Be Equal As Strings    ${radiobutton_text}    ${Radio_text}










