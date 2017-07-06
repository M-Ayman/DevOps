*** Settings ***
Library   ExtendedSelenium2Library
Resource    SearchBar.robot
*** Variables ***
${Home_tab1}                    Css=#tab1
${Orange Radio}                 xpath=//*[@id='vmap']
${Free Access}                  css=h2.ng-binding
${My Favorite Box}              Css=div.icon-text-container
${My Favorite Text}             Css=span.ng-binding

*** Keywords ***
verify "Orange Radio Home" visible
    element should be visible       ${Home_tab1}

verify "Orange Radio Home_Orange Radio Text" visible
    element should be visible       ${Orange Radio}

verify "Orange Radio Home_Free Access Text" visible
    element should be visible       ${Free Access}
    page should contain  A free access to thousands of internet radio stations and shows.

verify "Orange Radio Home_My Favorite" visible
    element should be visible       ${My Favorite Box}
    element should be visible       ${My Favorite Text}
    page should contain  My favorite station everywhere
    #page should contain element  xpath=//img[@src='img/Orange_1050661_19102015.jpg']

