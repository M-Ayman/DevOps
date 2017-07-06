*** Settings ***
Library   ExtendedSelenium2Library
*** Variables ***
${HeaderSearchBox}                            xpath=//div[@class="navbar-header search-module-activate"]//input
${HeaderSearchBox_magnifire}                  xpath=//div[@class="navbar-header search-module-activate"]//span[@class='input-group-addon']
${HeaderSearchBox_magnifire_results}          xpath=//div[@class="navbar-header search-module-activate"]//span[@class='input-group-addon no-radius']
${HomeSearchBox}                              xpath=//*[@id='tab1']//form//input
${HomeSearchBox_magnifire}                    css=#tab1 .glyphicon.glyphicon-search
${HeaderSearch_icon}                          xpath=//*[@id='navbar']//a[@class='icon-search']
${HeaderSearch_textbox}                       xpath=//div[@class='navbar-header search-module-activate']//input

${Search_textbox}                             xpath=//div[@class='row']//input[@class="form-control ng-pristine ng-untouched ng-valid"]
${Search_magnifire}                           xpath=//div[@class='row']//span[@class='input-group-addon']

${No result}                                  xpath=//*[@id='main']//h1
${HeaderSearch_textbox_results}               css=div.form-group.form-group-lg>div.search-results.ng-scope
${Suggest a new station container}            xpath=//div[@class='flower-icon-container']
${Suggest a new station_text}                 Suggest a new station
${Suggest a new station}                      xpath=//h5
${Suggest_button}                             xpath=//a[@class='button-oradio']
${Search_Stations_Title}                      xpath=//line-player-info[@class='radios-results ng-scope ng-isolate-scope']//h1[@class='ng-binding']
${first station_station section}              xpath=//line-player-info[@class='radios-results ng-scope ng-isolate-scope']//div[@class='line-player-container ng-scope'][1]
${first station_station section_box-player}   xpath=//line-player-info[@class='radios-results ng-scope ng-isolate-scope']//div[@class='line-player-container ng-scope'][1]//div[@class='box-player-image ng-scope']
${first station_station section_player-container}   xpath=//line-player-info[@class='radios-results ng-scope ng-isolate-scope']//div[@class='line-player-container ng-scope'][1]//div[@class='box-player'][1]
${first station_station section_more-info}    xpath=//line-player-info[@class='radios-results ng-scope ng-isolate-scope']//div[@class='line-player-container ng-scope'][1]//div[@class='more-info']
${Search_Stations section_show more_button}   xpath=//line-player-info[@class='radios-results ng-scope ng-isolate-scope']//a[@class='button-oradio fright']

${Search_Podcasts_Title}                      xpath=//line-player-info[@class='podcasts-results ng-scope ng-isolate-scope']//h1[@class='ng-binding']
${first station_podcast section}              xpath=//line-player-info[@class='podcasts-results ng-scope ng-isolate-scope']//div[@class='line-player-container ng-scope'][1]
${first station_podcast section_box-player}   xpath=//line-player-info[@class='podcasts-results ng-scope ng-isolate-scope']//div[@class='line-player-container ng-scope'][1]//div[@class='box-player-image ng-scope']
${first station_podcast section_player-container}   xpath=//line-player-info[@class='podcasts-results ng-scope ng-isolate-scope']//div[@class='line-player-container ng-scope'][1]//div[@class='box-player'][1]
${first station_podcast section_more-info}    xpath=//line-player-info[@class='podcasts-results ng-scope ng-isolate-scope']//div[@class='line-player-container ng-scope'][1]//div[@class='more-info']
${Search_Podcasts section_show more_button}   xpath=//line-player-info[@class='podcasts-results ng-scope ng-isolate-scope']//a[@class='button-oradio fright']

${Search_Shows_Title}                         xpath=//line-player-info[@class='shows-results ng-scope ng-isolate-scope']//h1[@class='ng-binding']
${first station_shows section}                xpath=//line-player-info[@class='shows-results ng-scope ng-isolate-scope']//div[@class='line-player-container ng-scope'][1]
${first station_shows section_box-player}     xpath=//line-player-info[@class='shows-results ng-scope ng-isolate-scope']//div[@class='line-player-container ng-scope'][1]//div[@class='box-player-image ng-scope']
${first station_shows section_player-container}   xpath=//line-player-info[@class='shows-results ng-scope ng-isolate-scope']//div[@class='line-player-container ng-scope'][1]//div[@class='box-player'][1]
${first station_shows section_more-info}      xpath=//line-player-info[@class='shows-results ng-scope ng-isolate-scope']//div[@class='line-player-container ng-scope'][1]//div[@class='more-info']
${Search_Shows section_show more_button}      xpath=//line-player-info[@class='shows-results ng-scope ng-isolate-scope']//a[@class='button-oradio fright']

# Css for the same #tab1 .form-control.ng-valid.ng-dirty.ng-valid-parse.ng-touched

#//*[@class="navbar-header search-module-activate"]//span[@class="glyphicon glyphicon-search"]
*** Keywords ***
verify "Header Search Bar" visible
    element should be visible  ${HeaderSearchBox}
    element should be visible  ${HeaderSearchBox_magnifire}

verify "Home Search Bar" visible
    element should be visible  ${HomeSearchBox}
    element should be visible  ${HomeSearchBox_magnifire}


click on header search icon
    click element              ${HeaderSearch_icon}

search with no result
    input text                      ${HeaderSearch_textbox}       ...........
    click element                   ${HeaderSearchBox_magnifire}
    element should be visible       ${No result}
    page should contain             No result

verify "Suggest a new station" section visible
    element should be visible       ${Suggest a new station container}
    element should be visible       ${Suggest a new station}
    page should contain             ${Suggest a new station_text}
    element should be visible       ${Suggest_button}

verify "Search box" visible
    element should be visible       ${Search_textbox}
    element should be visible       ${Search_magnifire}

click on "Suggest" button
    click element                    ${Suggest_button}


search with non exist name
    input text                      ${HeaderSearch_textbox}       aa
    element should be visible       ${HeaderSearch_textbox_results}
    click element                   ${HeaderSearchBox_magnifire}


search with exist name
    input text                      ${HeaderSearch_textbox}       AL HIDAYAH FM SOLO
    element should be visible       ${HeaderSearch_textbox_results}
    click element                   ${HeaderSearchBox_magnifire_results}


verify "Stations section" visible
    element should be visible       ${Search_Stations_Title}
    scroll element into view        ${Search_Stations section_show more_button}
    element should be visible       ${Search_Stations section_show more_button}
    click element                   ${Search_Stations section_show more_button}
    #sleep  5$

verify "Podcasts section" visible
    #scroll element into view        ${Search_Podcasts_Title}
    element should be visible       ${Search_Podcasts_Title}
    scroll element into view        ${Search_Podcasts section_show more_button}
    element should be visible       ${Search_Podcasts section_show more_button}
    #click button                    ${Search_Podcasts section_show more_button}

verify "Shows section" visible
    #scroll element into view        ${Search_Shows_Title}
    element should be visible       ${Search_Shows_Title}
    scroll element into view        ${Search_Shows section_show more_button}
    element should be visible       ${Search_Shows section_show more_button}
    #click button                    ${Search_Shows section_show more_button}

verify the first station in "Station section" visible
    scroll element into view        ${Search_Stations_Title}
    element should be visible       ${first station_station section}
    element should be visible       ${first station_station section_player-container}
    element should be visible       ${first station_station section_more-info}

click on the first station in "Station section"
    click button                    ${first station_station section_box-player}

click on "More infos" of the first station in "Station section"
    click button                    ${first station_station section_more-info}

verify the first station in "Podcasts section" visible
    scroll element into view        ${Search_Stations_Title}
    element should be visible       ${first station_podcast section}
    element should be visible       ${first station_podcast section_player-container}
    element should be visible       ${first station_podcast section_more-info}

click on the first station in "Podcasts section"
    click button                    ${first station_podcast section_box-player}

click on "More infos" of the first station in "Podcasts section"
    click button                    ${first station_podcast section_more-info}

verify the first station in "Shows section" visible
    scroll element into view        ${Search_Shows_Title}
    element should be visible       ${first station_shows section}
    element should be visible       ${first station_shows section_player-container}
    element should be visible       ${first station_shows section_more-info}

click on the first station in "Shows section"
    click button                    ${first station_shows section_box-player}

click on "More infos" of the first station in "Shows section"
    click button                    ${first station_shows section_more-info}