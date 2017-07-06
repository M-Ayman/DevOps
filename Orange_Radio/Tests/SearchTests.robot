*** Settings ***
Resource  ../Resources/Commonkwds.robot
Resource  ../Resources/POS/Header.robot
Resource  ../Resources/POS/Stations.robot
Resource  ../Resources/POS/OrangeRadio.robot
Resource  ../Resources/POS/Suggest.robot
Resource  ../Resources/POS/SearchBar.robot
Test Setup  Free App setup
Test Teardown  Close orange radio
*** Keywords ***
Free App setup
    Open orange radio
    sleep  2s
    click on header search icon
*** Test Cases ***
Test "Search Bar" in home page
    verify "Header Search Bar" visible
    verify "Home Search Bar" visible
Test "Search" wih no result
    search with no result
    verify "Search box" visible
    verify "Suggest a new station" section visible
    click on "Suggest" button
    verify url of "Suggest a station" page
Test "Search" wih exist name
    [Tags]  debugit
    search with exist name
    verify "Search box" visible
    verify "Stations section" visible
    verify "Podcasts section" visible
    verify "Shows section" visible
