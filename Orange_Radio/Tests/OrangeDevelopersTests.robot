*** Settings ***
Resource  ../Resources/Commonkwds.robot
Test Setup  Free App setup
Test Teardown  Close orange radio
*** Keywords ***
Free App setup
    Open orange radio
    scroll page to "Contact Us"
    Click on "Developers_Button"
*** Test Cases ***
Test "Orange Radio" page in "Orange Developers" web
    verify title of "Orange Developers" page
    verify url of "Orange Developers" page