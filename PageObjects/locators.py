# verify Image
toolsimage_screenshot = "xpath://img[@src='/images/Toolsqa.jpg']"
tools_img = "xpath://img[@src='/images/Toolsqa.jpg']"
banner_screenshot = "xpath://div[@class='home-banner']"
banner_img = "xpath://div[@class='home-banner']/ a/ img[@src='/images/WB.svg' and @alt='Selenium Online Training']"

# banner-cards
elements_card = "xpath://div[@class='category-cards']/div[1]"
forms_card = "xpath://div[@class='category-cards']/div[2]"
alert_frame_windows_card = "xpath://div[@class='category-cards']/div[3]"
widgets_card = "xpath://div[@class='category-cards']/div[4]"
interactions_card = "xpath://div[@class='category-cards']/div[5]"
bookstore_card = "xpath://div[@class='category-cards']/div[6]"
card_counts = "xpath://div[@class='category-cards']/div"

# navbar items verifying
navbar_items = "xpath://div[@class='left-pannel'] /div/div"

# coomon datas page

select_text = "xpath://div[contains(text(),'Please select an item from left to start practice.')]"
page_text = "xpath://div[@class='pattern-backgound playgound-header']/div[@class='main-header']"
page_nav_items = "xpath://div[@class='element-list collapse show']//li"

# elements data

Textbox = "xpath=//div[@class='element-list collapse show']//li[@id='item-0']"
Checkbox = "xpath=//div[@class='element-list collapse show']//li[@id='item-1']"
Radio_Button = "xpath=//div[@class='element-list collapse show']//li[@id='item-2']"
Web_Tables = "xpath=//div[@class='element-list collapse show']//li[@id='item-3']"
Buttons = "xpath=//div[@class='element-list collapse show']//li[@id='item-4']"
Links = "xpath=//div[@class='element-list collapse show']//li[@id='item-5']"
Broken_links_images = "xpath=//div[@class='element-list collapse show']//li[@id='item-6']"
Upload_and_download = "xpath=//div[@class='element-list collapse show']//li[@id='item-7']"
Dynamic_properties = "xpath=//div[@class='element-list collapse show']//li[@id='item-8']"

# Forms Page

Practice_Form = "xpath=//div[@class='element-list collapse show']//li[@id='item-0']"

# Alert and Frame
Browser_Window = "xpath=//div[@class='element-list collapse show']//li[@id='item-0']"
Alerts = "xpath=//div[@class='element-list collapse show']//li[@id='item-1']"
Frames = "xpath=//div[@class='element-list collapse show']//li[@id='item-2']"
Nested_Frames = "xpath=//div[@class='element-list collapse show']//li[@id='item-3']"
Modal_Dialogs = "xpath=//div[@class='element-list collapse show']//li[@id='item-4']"

# widgets page
Accordian = "xpath=//div[@class='element-list collapse show']//li[@id='item-0']"
AutoComplete = "xpath=//div[@class='element-list collapse show']//li[@id='item-1']"
Datepicker = "xpath=//div[@class='element-list collapse show']//li[@id='item-2']"
Slider = "xpath=//div[@class='element-list collapse show']//li[@id='item-3']"
Progress_bar = "xpath=//div[@class='element-list collapse show']//li[@id='item-4']"
Tabs = "xpath=//div[@class='element-list collapse show']//li[@id='item-5']"
Tool_Tips = "xpath=//div[@class='element-list collapse show']//li[@id='item-6']"
Menu = "xpath=//div[@class='element-list collapse show']//li[@id='item-7']"
Select_Menu = "xpath=//div[@class='element-list collapse show']//li[@id='item-8']"

# interactions
Sortable = "xpath=//div[@class='element-list collapse show']//li[@id='item-0']"
Selectable = "xpath=//div[@class='element-list collapse show']//li[@id='item-1']"
Resizable = "xpath=//div[@class='element-list collapse show']//li[@id='item-2']"
Droppable = "xpath=//div[@class='element-list collapse show']//li[@id='item-3']"
Dragabble = "xpath=//div[@class='element-list collapse show']//li[@id='item-4']"

# books
Login = "xpath=//div[@class='element-list collapse show']//li[@id='item-0']"
Book_Store = "xpath=//div[@class='element-list collapse show']//li[@id='item-2']"
Profile = "xpath=//div[@class='element-list collapse show']//li[@id='item-3']"
Book_Store_API = "xpath=//div[@class='element-list collapse show']//li[@id='item-4']"

# Tabs = "xpath=//div[@class='element-list collapse show']//li[@id='item-5']"
# Tool_Tips = "xpath=//div[@class='element-list collapse show']//li[@id='item-6']"
# Menu = "xpath=//div[@class='element-list collapse show']//li[@id='item-7']"
# Select_Menu = "xpath=//div[@class='element-list collapse show']//li[@id='item-8']"

searchbox = "xpath://input[@id='searchBox']"
loginbutton = "xpath://button[@id='login']"
table = "xpath://div[@class='rt-table']/div"
table_row = "xpath://div[@class='rt-tbody']/div[@class='rt-tr-group']"
table_col = "xpath://div[@class='rt-th rt-resizable-header -cursor-pointer']"
table_header = "xpath://div[@class='rt-thead -header']"

# textbox page
Textbox_username = "xpath://label[@id='userName-label']"
Textbox_email = "xpath://label[@id='userEmail-label']"
Textbox_currentaddress = "xpath://label[@id='currentAddress-label']"
Textbox_permanentaddress = "xpath://label[@id='permanentAddress-label']"
input_username = "xpath://input[@id='userName']"
input_email = "xpath://input[@id='userEmail']"
input_currentaddress = "xpath://textarea[@id='currentAddress']"
input_permanentaddress = "xpath://textarea[@id='permanentAddress']"
textbox_submit = "xpath://button[@id='submit']"

# verifytextdatas

txt_input_name = "xpath://div[@class='border col-md-12 col-sm-12']/p[@id='name']"
txt_input_email = "xpath://div[@class='border col-md-12 col-sm-12']/p[@id='email']"
txt_input_currentaddress = "xpath://div[@class='border col-md-12 col-sm-12']/p[@id='currentAddress']"
txt_input_permanentaddress = "xpath://div[@class='border col-md-12 col-sm-12']/p[@id='permanentAddress']"

# checkbox verify

check_arrow = "xpath://button[@title='Toggle']//*[name()='svg']"

check_square = "xpath://span[@class='rct-checkbox']//*[name()='svg']"
check_folder_icon = "xpath://span[@class='rct-node-icon']"
check_title = "xpath://span[@class='rct-title']"
check_plus_icon = "xpath://button[@title='Expand all']//*[name()='svg']"
check_neagative_icon = "xpath://button[@title='Collapse all']//*[name()='svg']"

# checkox testing
# desktop_check ="xpath://*[@id='tree-node']/ol/li/ol/li[1]/span/label/span[1]/ol/li[2]"

click_desktop = "xpath://*[@id='tree-node']/ol/li/ol/li[1]/span/label/span[1]"
click_documents = "xpath://label[@for='tree-node-documents']//span[@class='rct-checkbox']//*[name()='svg']"
result_checkbox = "xpath://div[@id='result']"

# radiobuttonpage
radiobutton_text = "xpath://div[@class='mb-3' and contains(text(),'Do you like the site?')]"
enabled_radiobutton = "xpath://div[@class='custom-control custom-radio custom-control-inline']"
disabled_radiobutton = "xpath://div[@class='custom-control disabled custom-radio custom-control-inline']"

# books link Page
search_book = "xpath://span[@id='basic-addon2']//span//*[name()='svg']"
booklink = "xpath://a[normalize-space()='Speaking JavaScript']"
click_booklink = "xpath://a[normalize-space()='Learning JavaScript Design Patterns']"
click_programming = "xpath://a[normalize-space()='Programming JavaScript Applications']"
# bookdetails page

ISBN = "xpath://label[@id='ISBN-label']"
Title = "xpath://label[@id='title-label']"
SubTitle = "xpath://*[@id='subtitle-label']"
Author = "xpath://label[@id='author-label']"
Publisher = "xpath://label[@id='publisher-label']"
Totalpages = "xpath://label[@id='pages-label']"
Description = "xpath://label[@id='description-label']"
Website = "xpath://label[@id='website-label']"

ISBN_Contain = "xpath://div[@id='ISBN-wrapper']//label[@id='userName-value']"
Title_Contain = "xpath://div[@id='title-wrapper']//label[@id='userName-value']"
SubTitle_Contain = "xpath://div[@id='subtitle-wrapper']//label[@id='userName-value']"
Author_Contain = "xpath://div[@id='author-wrapper']//label[@id='userName-value']"
Publisher_Contain = "xpath://div[@id='publisher-wrapper']//label[@id='userName-value']"
Totalpages_contain = "xpath://div[@id='pages-wrapper']//label[@id='userName-value']"
Description_contain = "xpath://div[@id='description-wrapper']//label[@id='userName-value']"
Website_contain = "xpath://div[@id='website-wrapper']//label[@id='userName-value']"

backtostore_button = "xpath://button[@id='addNewRecordButton']"

# bookstore login page

bookstore_welcome = "xpath://h2[normalize-space()='Welcome,']"
loginbookstore = "xpath://h5[normalize-space()='Login in Book Store']"
bookstore_username = "xpath://label[@id='userName-label']"
bookstore_password = "xpath://label[@id='password-label']"
bookstore_input_username = "xpath://input[@id='userName']"
bookstore_input_password = "xpath://input[@id='password']"
click_newuser = "xpath://button[@id='newUser']"

# book newuser
new_userregister = "xpath://h4[normalize-space()='Register to Book Store']"
first_name = "xpath://label[@id='firstname-label']"
last_name = "xpath://label[@id='lastname-label']"
username_newuser = "xpath://label[@id='userName-label']"
password_newuser = "xpath://label[@id='password-label']"

input_firtname = "xpath://input[@id='firstname']"
input_lastname = "xpath://input[@id='lastname']"
input_txt_username = "xpath://input[@id='userName']"
input_txt_password = "xpath://input[@id='password']"
register_to_bookstore_registerbtn  = "xpath://button[@id='register']"
newuser_backtologin = "xpath://button[@id='gotologin']"
captcha = "xpath://div[@id='g-recaptcha']"

# error message

loginpage_error_message = "xpath://*[@id='name']"

book_to_store_register_captcha_error_lbl = "xpath://p[@id='name']"

book_to_store_register_password_error_lbl = "xpath://p[@id='name']"

# profilepage

books_profile = "xpath://div[@class='text-left col-md-1 col-sm-12']//label[@id='userName-label']"
profile_username = "xpath://div[@class='text-right col-md-5 col-sm-12']//label[@id='userName-label']"
profile_logout = "xpath://div[@class='text-right col-md-5 col-sm-12']//button[@id='submit']"
gotobookstore = "xpath://button[@id='gotoStore']"
delete_account = "xpath://div[@class='text-center button']//button[@id='submit']"
delete_all_books = "xpath://div[@class='text-right button di']//button[@id='submit']"
fetched_username = "xpath://label[@id='userName-value']"
addtocollections = "xpath://div[@class='text-right fullButton']//button[@id='addNewRecordButton']"

details_logout = "xpath://button[@id='submit']"
backtobookdetails = "xpath://div[@class='text-left fullButton']//button[@id='addNewRecordButton']"


delete_icon = "xpath://*[@id='delete-record-undefined']"


#modal alert

modal_alert = "xpath://div[@class='modal-content']"
modal_ok = "xpath://div[@class='modal-content']/div/button[@id='closeSmallModal-ok']"
# footerpart
txt_footer = "xpath://*[@id='app']/footer/span"
