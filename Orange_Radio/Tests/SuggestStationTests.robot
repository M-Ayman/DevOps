*** Settings ***
Resource  ../Resources/Commonkwds.robot
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
    Open "Suggest Station page"
*** Test Cases ***
Test "Suggest a station" page
    verify title of "Suggest a station" page

Test orange logo in the header of "Suggest a station" page
   Click "orange" logo
   verify "Orange Radio Home" visible

Test orange Radio link in the header of "Suggest a station" page
   click "Orange Radio" link
   verify "Orange Radio Home" visible

Test orange Radio Home link in the header of "Suggest a station" page
     click "Home" link
     verify "Orange Radio Home" visible

Test orange Top Radios link in the header of "Suggest a station" page
    Click "Top Radios" link
    Verify "Top Station" visible

Test orange contacts link in the header of "Suggest a station" page
    click "contacts" link
    Verify "Contact Us" visible


Test Serch radio page
    Verify "serch radio form" visible
    Verify details of "serch radio form" visible

Test add new radio page
    go to "add new radio station" page
    verify "add new radio station form" visible
    verify sections of "add new radio station form" visible

Test "About you" section details
    go to "add new radio station" page
    verify name of "About you" section visible
    enter name of "About you" section
    verify name of "About you" section visible
    enter email of "About you" section

Test "About the radio" section details
    go to "add new radio station" page
    verify name of "About the radio" section visible
    enter name of "About the radio" section
    verify Short description of "About the radio" section visible
    enter Short description of "About the radio" section
    verify Description of "About the radio" section visible
    enter Description of "About the radio" section
    verify Language of "About the radio" section visible
    enter Language of "About the radio" section
    verify Style of "About the radio" section visible
    enter Style of "About the radio" section
    verify Country of "About the radio" section visible
    enter Country of "About the radio" section
    verify City of "About the radio" section visible
    enter City of "About the radio" section
    verify frequency of "About the radio" section visible
    enter frequency of "About the radio" section
    verify Web site of "About the radio" section visible
    enter Web site of "About the radio" section
    verify Logo of "About the radio" section visible
    enter Logo of "About the radio" section
    verify Twitter of "About the radio" section visible
    enter Twitter of "About the radio" section
    verify Facebook of "About the radio" section visible
    enter Facebook of "About the radio" section

Test "streaming" section details
    go to "add new radio station" page
    verify details of "streaming" section visible
    enter details of "streaming" section
    add new url in "streaming" section
    remove new url in "streaming" section

Test "Submit" button with valid data
    go to "add new radio station" page
    valed data
    click on "Submit" button

Test "Submit" button with embty data
    go to "add new radio station" page
    click on "Submit" button
    empty data

Test invaled data
    go to "add new radio station" page
    invaled data
