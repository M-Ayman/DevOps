*** Settings ***
Library     Collections
Resource  ../Resources/Commonkwds.robot
Resource  ../Resources/POS/Header.robot
Resource  ../Resources/POS/Stations.robot
Resource  ../Resources/POS/OrangeRadio.robot
Resource  ../Resources/POS/ContactUs.robot
Resource  ../Resources/POS/FreeAPP.robot
Resource  ../Resources/POS/Captcha.robot
Resource  ../Resources/POS/OtherQuestions.robot
#Test Setup  Open orange radio
Test Setup  Free App setup
Test Teardown  Close orange radio
*** Keywords ***
Free App setup
    Open orange radio
    scroll element into view  ${ContactUs_text}

*** Test Cases ***
Test Home Button
    scroll element into view  Xpath=//*[@id='tab3']/div[1]/div/div[1]/h1
    select "Russian Federation"


Test another dict
        [Tags]  debugit
