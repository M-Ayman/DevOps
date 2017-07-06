*** Settings ***
Resource  ../Resources/Commonkwds.robot
Test Setup  Free App setup
Test Teardown  Close orange radio
*** Keywords ***
Free App setup
    Open orange radio
    scroll page to "Contact Us"
*** Test Cases ***
Test "Contact Us" visible
    Verify "Contact Us" visible

Test "Suggest Station_Button"

Test "Developers_Button"

Test "Others questions_Button"


