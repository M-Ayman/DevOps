*** Settings ***
Library   ExtendedSelenium2Library
Library     Collections
*** Variables ***
${And also_And also}                     css=#tab5 h1
${And also_PlayButton_1}                 Xpath=(//div[@id='tab5']//div[@class='box-player-image'])[2]
${And also_PlayButton_infos_1}           Xpath=((//div[@id='tab5']//div[@class='box-player-image'])[2])//div[@class="box-player-infos ng-binding"]
${And also_PlayButton_description_1}     Xpath=(//div[@id='tab5']//div[@class='box-player-image'])[2]//div[@class="description ng-binding"]
${And also_PlayButton_2}                 Xpath=(//div[@id='tab5']//div[@class='box-player-image'])[1]
${And also_PlayButton_infos_2}           Xpath=(//div[@id='tab5']//div[@class='box-player-image'])[1]/div[@class="box-player-infos ng-binding"]
${And also_PlayButton_description_2}     Xpath=(//div[@id='tab5']//div[@class='box-player-image'])[1]//div[@class="description ng-binding"]
${And also_PlayButton_3}                 Xpath=(//div[@id='tab5']//div[@class='box-player-image'])[3]
${And also_PlayButton_infos_3}           Xpath=(//div[@id='tab5']//div[@class='box-player-image'])[3]/div[@class="box-player-infos ng-binding"]
${And also_PlayButton_description_3}     Xpath=(//div[@id='tab5']//div[@class='box-player-image'])[3]//div[@class="description ng-binding"]
${And also_PlayButton_4}                 Xpath=(//div[@id='tab5']//div[@class='box-player-image'])[4]
${And also_PlayButton_infos_4}           Xpath=(//div[@id='tab5']//div[@class='box-player-image'])[4]/div[@class="box-player-infos ng-binding"]
${And also_PlayButton_description_4}     Xpath=(//div[@id='tab5']//div[@class='box-player-image'])[4]//div[@class="description ng-binding"]
${title_La TV d'Orange_orange}           Décodeur Livebox Play : écouter de la musique avec Orange radio - Assistance Orange
${title_Apple Watch_orange}              Orange Radio & Montre connectée - YouTube
${title_Montre Pebble_orange}            Orange Radio | App
${title_La clé TV_orange}                Clé TV d’Orange – Avis, prix, caractéristiques
&{playbtns}     La clé TV=${title_La clé TV_orange}     Apple Watch=${title_Apple Watch_orange}    Montre Pebble=${title_Montre Pebble_orange}      La TV d'Orange=${title_La TV d'Orange_orange}   La TV d'Orange=${title_La TV d'Orange_orange}

*** Keywords ***
Scroll page to "And also"
    scroll element into view  ${And also_And also}

verify "And also_PlayButton_1" visible
    element should be visible  ${And also_PlayButton_1}
    element should be visible  ${And also_PlayButton_infos_1}
    page should contain  La TV d'Orange
verify "And also_PlayButton_2" visible
    element should be visible  ${And also_PlayButton_2}
    element should be visible  ${And also_PlayButton_infos_2}
    page should contain  La clé TV

verify "And also_PlayButton_3" visible
    element should be visible  ${And also_PlayButton_3}
    element should be visible  ${And also_PlayButton_infos_3}
    page should contain  Apple Watch

verify "And also_PlayButton_4" visible
    element should be visible  ${And also_PlayButton_4}
    element should be visible  ${And also_PlayButton_infos_4}
    page should contain  Montre Pebble

move mouse over the "And also_PlayButton_1"
    sleep  5s
    wait until element is visible   ${And also_PlayButton_1}     10s
    #mouse over  ${And also_PlayButton_1}
    #element should be visible   ${And also_PlayButton_description_1}

move mouse over the "And also_PlayButton_2"
    sleep  5s
    wait until element is visible   ${And also_PlayButton_2}     10s
    #mouse over  ${And also_PlayButton_2}
    #element should be visible   ${And also_PlayButton_description_2}

move mouse over the "And also_PlayButton_3"
    sleep  5s
    wait until element is visible   ${And also_PlayButton_3}     10s
    #mouse over  ${And also_PlayButton_3}
    #element should be visible   ${And also_PlayButton_description_3}

move mouse over the "And also_PlayButton_4"
    sleep  5s
    wait until element is visible   ${And also_PlayButton_4}     10s
    #mouse over  ${And also_PlayButton_4}
    #element should be visible   ${And also_PlayButton_description_4}

Click on "And also_PlayButton_1"
    [Tags]  debugit
    wait until element is visible   ${And also_PlayButton_1}     10s
    ${Text_And also_PlayButton_infos_1}   get text  ${And also_PlayButton_infos_1}
    click element       ${And also_PlayButton_1}
    ${new window title}    get from dictionary  ${playbtns}  ${Text_And also_PlayButton_infos_1}
    sleep   10s
    select window       title =${new window title}

Click on "And also_PlayButton_2"
    wait until element is visible   ${And also_PlayButton_2}     10s
    ${Text_And also_PlayButton_infos_2}   get text  ${And also_PlayButton_infos_2}
    click element       ${And also_PlayButton_2}
    ${new window title}    get from dictionary  ${playbtns}  ${Text_And also_PlayButton_infos_2}
    sleep   10s
    select window       title =${new window title}


Click on "And also_PlayButton_3"
    wait until element is visible   ${And also_PlayButton_3}     10s
    ${Text_And also_PlayButton_infos_3}   get text  ${And also_PlayButton_infos_3}
    click element       ${And also_PlayButton_3}
    ${new window title}    get from dictionary  ${playbtns}  ${Text_And also_PlayButton_infos_3}
    sleep   10s
    select window       title =${new window title}


Click on "And also_PlayButton_4"
    wait until element is visible   ${And also_PlayButton_4}     10s
    ${Text_And also_PlayButton_infos_4}   get text  ${And also_PlayButton_infos_4}
    click element       ${And also_PlayButton_4}
    ${new window title}    get from dictionary  ${playbtns}  ${Text_And also_PlayButton_infos_4}
    sleep   10s
    select window       title =${new window title}

