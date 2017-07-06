*** Settings ***
Resource  ../Resources/Commonkwds.robot
Resource  ../Resources/POS/FreeAPP.robot
Test Setup  Free App setup
Test Teardown  Close orange radio
*** Keywords ***
Free App setup
    Open orange radio
    scroll page to "download the free app"
*** Test Cases ***
Test "Download the free app" Text
    verify "Download the free app" visible

Test "IOS img"
    verify "IOS img" visible

Test "Android img"
    verify "Android img" visible

Test "App Store_link"
    verify "App Store_link" visible

Test "Google Play_link"
    verify "Google Play_link" visible

Test "Discover Orange_Text"
    verify "Discover Orange_Text" visible

Test Orange Radio in App Store
    Click on "App Store_link"

Test Orange Radio in Google Play
    Click on "Google Play_link"