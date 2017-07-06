*** Settings ***
Library   ExtendedSelenium2Library
#Test Setup  Open orange radio
#Test Teardown  Close orange radio
*** Variables ***
${Browser}      firefox
${Url}      http://www.radio.orange.com/home
${Url_suggest}       http://www.radio.orange.com/suggest/#/search
${ContactUs_text}                 xpath=//*[@id='tab6']//h1
${Suggest a station_Button}       xpath=//*[@id='mask1']/div/a[1]/div
${Developers_Button}              xpath=//*[@id='mask1']/div/a[2]/div
${Others questions_Button}        xpath=//*[@id='mask1']/div/a[3]/div
${Other Questions Form}           xpath=//*[@id='mask2']/form
${Label_Name}                     xpath=//*[@id='mask2']/form/div[1]/label
${Label_Email}                    xpath=//*[@id='mask2']/form/div[2]/label
${Label_Message}                  xpath=//*[@id='mask2']/form/div[3]/label
${Textbox_Name}                   xpath=//*[@id='inputName']
${Textbox_Email}                  xpath=//*[@id='inputEmail']
${Textbox_Message}                xpath=//*[@id='inputMessage']
${Cancle_Button}                  xpath=//*[@id='mask2']/form/div[5]/div/a/div
${Save_Button}                    xpath=.//*[@id='mask2']/form/div[5]/div/button

${Captcha_Container}                 xpath=//*[@id='mask2']/form/div[4]/div/div/iframe[@title='recaptcha widget']
${Captcha_Checkbox}                  xpath=//*[@id='recaptcha-anchor']/div[5]
${Captcha_Checkbox-label}            xpath=//*[@id='recaptcha-anchor-label']
${Captcha_Footer}                    Css=.rc-anchor-normal-footer
${Captcha_window}                    xpath=.//*[@id='rc-imageselect']
${Captcha_Title}                     Css=.rc-imageselect-desc-wrapper
${Orange Developer-Url}              url=https://developer.orange.com/apis/orangeradio/
${Orange Developer-Title}            title=Orange Developer - Orange Radio - Overview
${Suggest Station-Url}               url=http://www.radio.orange.com/suggest/#/search
${Suggest Station-Title}             Orange Radio - Suggestion
${Suggest Station-Container}
*** Keywords ***
Open orange radio
    OPEN BROWSER  ${Url}    ${Browser}
    Maximize Browser Window

Close orange radio
    CLOSE BROWSER

Scroll page to "Contact Us"
    scroll element into view  ${ContactUs_text}

Click on "Others questions_Button"
    click element                   ${Others questions_Button}
    element should not be visible   ${Suggest a station_Button}
    element should not be visible   ${Developers_Button}
    element should not be visible   ${Others questions_Button}
    element should be visible       ${ContactUs_text}
    element should be visible       ${Other Questions Form}

Click on "Developers_Button"
    click element                   ${Developers_Button}

Click on "Suggest a station_Button"
    click element                   ${Suggest a station_Button}


verify url of "Orange Developers" page
    sleep  5S
    select window                   ${Orange Developer-Url}
    page should contain             Orange Developer

verify Title of "Orange Developers" page
    sleep  5S
    select window                   ${Orange Developer-Title}
    page should contain             Orange Developer

Open "Suggest Station page"
     OPEN BROWSER  ${Url_suggest}    ${Browser}
     Maximize Browser Window

verify title of "Suggest a station" page
    sleep   5s
    title should be  ${Suggest Station-Title}

verify url of "Suggest a station" page
    sleep   5s
    select window  ${Suggest Station-Url}

Verify "Contact Us" visible
    element should be visible  ${ContactUs_text}
    element should be visible  ${Suggest a station_Button}
    element should be visible  ${Developers_Button}
    element should be visible  ${Others questions_Button}

verify labels of "Other Questions Form" visible
    element should be visible   ${Label_Name}
    element should be visible   ${Label_Email}
    element should be visible   ${Label_Message}

verify textboxs of "Other Questions Form" visible
    element should be visible   ${Textbox_Name}
    element should be visible   ${Textbox_Email}
    element should be visible   ${Textbox_Message}

Click on "Other Questions Form_Cancel_Button"
    element should be visible   ${Cancle_Button}
    click element   ${Cancle_Button}

verify "Other Questions Form_Save_Button" visible
    element should be visible   ${Save_Button}

verify "Other Questions Form_Save_Button" not clickable
    element should be disabled  ${Save_Button}

verify captcha of "Other Questions Form" visible
    select frame                ${Captcha_Container}
    element should be visible   ${Captcha_Checkbox}
    element should be visible   ${Captcha_Checkbox-label}
    element should be visible   ${Captcha_Footer}

click "I'm not a robot" in captcha form
    select frame                ${Captcha_Container}
    click element               ${Captcha_Checkbox}
    sleep                       5S

