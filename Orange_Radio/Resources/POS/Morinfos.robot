*** Settings ***
Library   ExtendedSelenium2Library
*** Variables ***
${AL HIDAYAH FM SOLO_url}                           url=http://www.radio.orange.com/radios/al_hidayah_fm_solo
${AL HIDAYAH FM SOLO_play-button}                   xpath=//*[@id='tab1']//div[@class='play-button']
${AL HIDAYAH FM SOLO_title}                         xpath=//div[@id='tab1']/div[@class='title']
${AL HIDAYAH FM SOLO_description_text}              xpath=//div[@class="description ng-scope"]
${AL HIDAYAH FM SOLO_description_word}              xpath=//div[@class='text']/h4
${More on AL HIDAYAH FM SOLO}                       xpath=//*[@id='tab3']/h1

${Open station web site_Container}                  xpath=//div[@class='flower-container'][1]
${Open station web site_icon}                       xpath=//div[@class='flower-container'][1]/div[@class='flower-icon-container']
${Open station web site_text}                       xpath=//div[@class='flower-container'][1]//h5
${Open station web site_open button}                xpath=//div[@class='flower-container'][1]//a

${suggest an update_Container}                      xpath=//div[@class='flower-container'][2]
${suggest an update_icon}                           xpath=//div[@class='flower-container'][2]/div[@class='flower-icon-container']
${suggest an update_text}                           xpath=//div[@class='flower-container'][2]//h5
${suggest an update_suggest button}                 xpath=//div[@class='flower-container'][2]//a
${AL HIDAYAH FM SOLO_facebook_icon}                 xpath=//*[@id='tab3']//i[@class='fa fa-facebook']
${AL HIDAYAH FM SOLO_facebook_url}                  url=https://www.facebook.com/alhidayahfmradio/
${AL HIDAYAH FM SOLO_web site_url}                  url=http://radio.alhidayahfm.com/
${AL HIDAYAH FM SOLO_suggest_url}                   url=http://www.radio.orange.com/suggest/#/edit/al_hidayah_fm_solo
*** Keywords ***
verify more infos page url of "AL HIDAYAH FM SOLO" station
    sleep  5S
    select window                         ${AL HIDAYAH FM SOLO_url}
    element should be visible             ${AL HIDAYAH FM SOLO_play-button}
    element should be visible             ${AL HIDAYAH FM SOLO_title}
    page should contain                   AL HIDAYAH FM SOLO
    scroll element into view              ${AL HIDAYAH FM SOLO_description_text}
    element should be visible             ${AL HIDAYAH FM SOLO_description_word}


verify "More on" section visible
    scroll element into view              ${More on AL HIDAYAH FM SOLO}
    element should be visible             ${More on AL HIDAYAH FM SOLO}
    page should contain                   More on AL HIDAYAH FM SOLO

verify "web site" section visible
    element should be visible             ${Open station web site_Container}
    element should be visible             ${suggest an update_icon}
    element should be visible             ${Open station web site_text}
    element should be visible             ${Open station web site_open button}

click on open button from "web site" section
    scroll element into view              ${Open station web site_open button}
    click element                         ${Open station web site_open button}
    sleep  5S
    select window                         ${AL HIDAYAH FM SOLO_web site_url}

verify "suggest an update" section visible
    element should be visible             ${suggest an update_Container}
    element should be visible             ${suggest an update_icon}
    element should be visible             ${suggest an update_text}
    element should be visible             ${suggest an update_suggest button}

click on suggest button in "suggest an update" section
    scroll element into view              ${suggest an update_suggest button}
    click element                         ${suggest an update_suggest button}
    sleep  5S
    select window                         ${AL HIDAYAH FM SOLO_suggest_url}
verify "facebook" icon visible
    scroll element into view                ${AL HIDAYAH FM SOLO_facebook_icon}
    element should be visible               ${AL HIDAYAH FM SOLO_facebook_icon}


click on "facebook" icon
    scroll element into view  ${AL HIDAYAH FM SOLO_facebook_icon}
    click element  ${AL HIDAYAH FM SOLO_facebook_icon}
    sleep  5S
    select window                         ${AL HIDAYAH FM SOLO_facebook_url}
