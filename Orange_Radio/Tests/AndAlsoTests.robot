*** Settings ***
Resource  ../Resources/Commonkwds.robot
Resource  ../Resources/POS/AndAlso.robot
Test Setup  Free App setup
Test Teardown  Close orange radio
*** Keywords ***
Free App setup
    Open orange radio
    Scroll page to "And also"
*** Test Cases ***
Test "And also_PlayButton_1"

    verify "And also_PlayButton_1" visible
    move mouse over the "And also_PlayButton_1"

Test "And also_PlayButton_2"
    verify "And also_PlayButton_2" visible
    move mouse over the "And also_PlayButton_2"

Test "And also_PlayButton_3"
    verify "And also_PlayButton_3" visible
    move mouse over the "And also_PlayButton_3"

Test "And also_PlayButton_4"
    verify "And also_PlayButton_4" visible
    move mouse over the "And also_PlayButton_4"

Test click "And also_PlayButton_1"
    [Tags]  debugit
    Click on "And also_PlayButton_1"

Test click "And also_PlayButton_2"
    Click on "And also_PlayButton_2"

Test click "And also_PlayButton_3"
    Click on "And also_PlayButton_3"

Test click "And also_PlayButton_4"
    Click on "And also_PlayButton_4"