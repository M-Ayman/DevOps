*** Settings ***
Resource  ../Resources/Commonkwds.robot
Resource  ../Resources/POS/Footer.robot
Resource  ../Resources/POS/OrangeRadio.robot
Test Setup  Free App setup
Test Teardown  Close orange radio
*** Keywords ***
Free App setup
    Open orange radio
    go to footer
*** Test Cases ***
Test footer content

    check the footer
    check the first section content of footer
    check the second section content of footer
    check the third section content of footer
    sleep  2s

Test facebook icon
    click on "facebook" icon

Test twitter icon
    click on "twitter" icon

Test back to home page from footer
    click on "orange 2015"
    verify "Orange Radio Home" visible
    verify "Orange Radio Home_Free Access Text" visible
    verify "Orange Radio Home_My Favorite" visible
    verify "Home Search Bar" visible