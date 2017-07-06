*** Settings ***
Resource  ../Resources/Commonkwds.robot
Resource  ../Resources/POS/SearchBar.robot
Resource  ../Resources/POS/OrangeRadio.robot
Test Setup  Open orange radio
Test Teardown  Close orange radio
*** Test Cases ***
Test Orange Radio Text
    verify "Orange Radio Home_Orange Radio Text" visible

Test Free Access Text
    verify "Orange Radio Home_Free Access Text" visible

Test My Favorit Section
    verify "Orange Radio Home_My Favorite" visible

Test Search Section
    verify "Home Search Bar" visible


