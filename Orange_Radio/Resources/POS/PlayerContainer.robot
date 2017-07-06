*** Settings ***
Library   ExtendedSelenium2Library
*** Variables ***
${Player-Container}                             Css=div.or-player-container.or-transition.or-no-backward.or-no-forward.or-type-podcast.has-progress
${Player-Wrapper}                               Css=div.or-player-wrapper
${Progress Bar}                                 Css=div.or-progress.or-transition

${Player-Container Control-Zone}                Css=div.or-control-zone
${Player-Container logo}                        Css=div.or-logo
${Player-Container Play-Button}                 Css=a.or-button.or-audio-player-place-pause-button.or-ico-play
${Player-Container pause-Button}                Css=a.or-button.or-audio-player-place-pause-button.or-ico-pause

${Player-Container Info-Zone}                   Css=div.or-info-zone
${Player-Container Info-Source-Icon}            Css=span.or-info-source.or-ico
${Player-Container Radio-Name}                  Css=span.or-radio-name
${Player-Container Radio-Program}               Css=span.or-radio-program
${Player-Container Radio-Topic}                 Css=div.or-radio-topic

${Player-Container Options-Zone}                Css=div.or-info-zone
${Player-Container Options-Fav-Icon}            Css=a.or-button.or-ico-fav
${Player-Container Options-Sound-Icon}          Css=a.or-button.or-ico-sound
${Player-Container Options-Sound-Icon-mute}     Css=a.or-button.or-ico-sound.or-mute
*** Keywords ***
verify "Player-Container" visible
    element should be visible           ${Player-Container}
    element should be visible           ${Player-Wrapper}

verify "Player-Container" details visible
    element should be visible           ${Progress Bar}
    element should be visible           ${Player-Container Control-Zone}
    element should be visible           ${Player-Container Info-Zone}
    element should be visible           ${Player-Container Options-Zone}


verify "Player-Container Control-Zone" details visible
    element should be visible           ${Player-Container logo}
    element should be visible           ${Player-Container pause-Button}
    element should not be visible       ${Player-Container Play-Button}

verify "Player-Container Info-Zone" details visible
     element should be visible          ${Player-Container Info-Source-Icon}
     element should be visible          ${Player-Container Radio-Name}
     element should be visible          ${Player-Container Radio-Program}
     element should be visible          ${Player-Container Radio-Topic}

Radio-Program text
    ${Program text}    get element attribute   ${Player-Container Radio-Program}@text
    [Return]    ${Program text}

verify "Player-Container Options-Zone" details visible
    element should be visible           ${Player-Container Options-Fav-Icon}
    element should be visible           ${Player-Container Options-Sound-Icon}
    element should not be visible       ${Player-Container Options-Sound-Icon-mute}

Click on "Player-Container Pause-Button"
    click element                       ${Player-Container pause-Button}
    element should be visible           ${Player-Container Play-Button}
    element should not be visible       ${Player-Container pause-Button}

Click on "Player-Container Play-Button"
    click element                       ${Player-Container Play-Button}
    element should be visible           ${Player-Container pause-Button}
    element should not be visible       ${Player-Container Play-Button}

Click on "Player-Container Sound-Icon"
    click element                       ${Player-Container Options-Sound-Icon}
    element should be visible           ${Player-Container Options-Sound-Icon-mute}
    element should not be visible       ${Player-Container Options-Sound-Icon}

Click on "Player-Container Mute-Icon"
    click element                       ${Player-Container Options-Sound-Icon-mute}
    element should be visible           ${Player-Container Options-Sound-Icon}
    element should not be visible       ${Player-Container Options-Sound-Icon-mute}
