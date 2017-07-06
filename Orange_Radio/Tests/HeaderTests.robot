*** Settings ***
Resource  ../Resources/Commonkwds.robot
Resource  ../Resources/POS/Header.robot
Resource  ../Resources/POS/Stations.robot
Resource  ../Resources/POS/OrangeRadio.robot
Resource  ../Resources/POS/SearchBar.robot
Resource  ../Resources/POS/ContactUs.robot
Test Setup  Open orange radio
Test Teardown  Close orange radio
*** Test Cases ***
Test orange logo
   Click "orange" logo
   verify "Orange Radio Home" visible

Test orange Radio link
   click "Orange Radio" link
   verify "Orange Radio Home" visible

Test Search icon
    click "search" icon
    verify "Header Search Bar" visible

Test Home Button
    click "Home" link
     verify "Orange Radio Home" visible

Test Top radios Button
    Click "Top Radios" link
    Verify "Top Station" visible

Test Contacts Button
    click "contacts" link
    Verify "Contact Us" visible