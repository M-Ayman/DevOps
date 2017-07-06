*** Settings ***
Resource  ../Resources/Commonkwds.robot
Test Setup  Free App setup
Test Teardown  Close orange radio
*** Keywords ***
Free App setup
    Open orange radio
    scroll page to "Contact Us"
    Click on "Others questions_Button"
*** Test Cases ***
Test labels of "Other Questions Form"
    verify labels of "Other Questions Form" visible

Test textboxs of "Other Questions Form"
    verify textboxs of "Other Questions Form" visible

Test cancel button of "Other Questions Form"
    Click on "Other Questions Form_Cancel_Button"
    Verify "Contact Us" visible

Test save button of "Other Questions Form"
    verify "Other Questions Form_Save_Button" visible
    verify "Other Questions Form_Save_Button" not clickable

Test captcha of "Other Questions Form" visible
    verify captcha of "Other Questions Form" visible

Test "I'm not a robot" in captcha form
    [Tags]  debugit
    click "I'm not a robot" in captcha form