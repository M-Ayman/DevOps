*** Settings ***
Resource  ../Resources/Commonkwds.robot
Resource  ../Resources/POS/Podcasts.robot
Resource  ../Resources/POS/PlayerContainer.robot
Test Setup  Free App setup
Test Teardown  Close orange radio
*** Keywords ***
Free App setup
    Open orange radio
    Scroll page to "Tops podcasts"

*** Test Cases ***
Test "podcasts_PlayButton_1"
    [Tags]  debugit
    verify "podcasts_PlayButton_1" visible
    move mouse over the "podcasts_PlayButton_1"
Test "podcasts_PlayButton_2"
    verify "podcasts_PlayButton_2" visible
    move mouse over the "podcasts_PlayButton_2"
Test "podcasts_PlayButton_3"
    verify "podcasts_PlayButton_3" visible
    move mouse over the "podcasts_PlayButton_3"
Test "podcasts_PlayButton_4"
    verify "podcasts_PlayButton_4" visible
    move mouse over the "podcasts_PlayButton_4"

Test click "podcasts_PlayButton_1"
    Click on "podcasts_PlayButton_1"
    verify "Player-Container" visible
    verify "Player-Container" details visible
    ${text_PlayButton_1}    Click on "podcasts_PlayButton_1"
    ${Program text}    Radio-Program text
    should be equal as strings  ${text_PlayButton_1}    ${Program text}

Test click "podcasts_PlayButton_2"
    Click on "podcasts_PlayButton_2"
    verify "Player-Container" visible
    verify "Player-Container" details visible
    ${text_PlayButton_2}    Click on "podcasts_PlayButton_2"
    ${Program text}    Radio-Program text
    should be equal as strings  ${text_PlayButton_2}    ${Program text}

Test click "podcasts_PlayButton_3"
    Click on "podcasts_PlayButton_3"
    verify "Player-Container" visible
    verify "Player-Container" details visible
    ${text_PlayButton_3}    Click on "podcasts_PlayButton_3"
    ${Program text}    Radio-Program text
    should be equal as strings  ${text_PlayButton_3}    ${Program text}

Test click "podcasts_PlayButton_4"
    Click on "podcasts_PlayButton_4"
    verify "Player-Container" visible
    verify "Player-Container" details visible
    ${text_PlayButton_4}    Click on "podcasts_PlayButton_4"
    ${Program text}    Radio-Program text
    should be equal as strings  ${text_PlayButton_4}    ${Program text}