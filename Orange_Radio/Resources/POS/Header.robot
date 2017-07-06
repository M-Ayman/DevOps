*** Settings ***
Resource    SearchBar.robot
Library   ExtendedSelenium2Library
*** Variables ***
${Orange_radio link}        Css=.navbar-brand.title.ng-binding
${Orange_logo}              xpath=//img[@title='Back to homepage']
${Search}                   xpath=//*[@id='navbar']/ul/li[1]/a
${Home}                     xpath=//*[@id='menu-tab-home']/a
${Top_radios}               xpath=//*[@id='menu-tab-top']/a
${contacts}                 xpath=//*[@id='menu-tab-contact']/a
*** Keywords ***
Click "orange" logo
    click image     ${orange_logo}

click "Orange Radio" link
    click link      ${Orange_radio link}

click "search" icon
    click element    ${Search}

click "Home" link
    click element   ${Home}

Click "Top Radios" link
    click element   ${top_radios}

click "contacts" link
    click element   ${contacts}