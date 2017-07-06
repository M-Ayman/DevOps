*** Settings ***
Library   ExtendedSelenium2Library
*** Variables ***
${podcasts_Tops podcasts}            Xpath=//*[@id='tab4']/div[1]/h1
${podcasts_PlayButton_1}             Xpath=(//div[@id='tab4']//div[@class='box-player-image'])[2]
${podcasts_PlayButton_infos_1}       Xpath=((//div[@id='tab4']//div[@class='box-player-image'])[2])//div[@class="box-player-infos ng-binding"]
${podcasts_PlayButton_glyphicon_1}   Xpath=(//div[@id='tab4']//div[@class='box-player-image'])[2]//div[@class="glyphicon glyphicon-play"]
${podcasts_PlayButton_2}             Xpath=(//div[@id='tab4']//div[@class='box-player-image'])[1]
${podcasts_PlayButton_infos_2}       Xpath=(//div[@id='tab4']//div[@class='box-player-image'])[1]/div[@class="box-player-infos ng-binding"]
${podcasts_PlayButton_glyphicon_2}   Xpath=(//div[@id='tab4']//div[@class='box-player-image'])[1]//div[@class="glyphicon glyphicon-play"]
${podcasts_PlayButton_3}             Xpath=(//div[@id='tab4']//div[@class='box-player-image'])[3]
${podcasts_PlayButton_infos_3}       Xpath=(//div[@id='tab4']//div[@class='box-player-image'])[3]/div[@class="box-player-infos ng-binding"]
${podcasts_PlayButton_glyphicon_3}   Xpath=(//div[@id='tab4']//div[@class='box-player-image'])[3]//div[@class="glyphicon glyphicon-play"]
${podcasts_PlayButton_4}             Xpath=(//div[@id='tab4']//div[@class='box-player-image'])[4]
${podcasts_PlayButton_infos_4}       Xpath=(//div[@id='tab4']//div[@class='box-player-image'])[4]/div[@class="box-player-infos ng-binding"]
${podcasts_PlayButton_glyphicon_4}   Xpath=(//div[@id='tab4']//div[@class='box-player-image'])[4]//div[@class="glyphicon glyphicon-play"]
*** Keywords ***
Scroll page to "Tops podcasts"
    scroll element into view  ${podcasts_Tops podcasts}

verify "podcasts_PlayButton_1" visible
    element should be visible  ${podcasts_PlayButton_1}
    element should be visible  ${podcasts_PlayButton_infos_1}

verify "podcasts_PlayButton_2" visible
    element should be visible  ${podcasts_PlayButton_2}
    element should be visible  ${podcasts_PlayButton_infos_2}
    page should contain  Les Grosses Têtes
    page should contain     La revue de presque de Nicolas Canteloup
verify "podcasts_PlayButton_3" visible
    element should be visible  ${podcasts_PlayButton_3}
    element should be visible  ${podcasts_PlayButton_infos_3}
    page should contain  Laurent Gerra

verify "podcasts_PlayButton_4" visible
    element should be visible  ${podcasts_PlayButton_4}
    element should be visible  ${podcasts_PlayButton_infos_4}
    page should contain  Au cœur de l'histoire de Franck Ferrand

move mouse over the "podcasts_PlayButton_1"
    sleep  5s
    wait until element is visible   ${podcasts_PlayButton_1}     10s
    #mouse over  ${PlayButton_1}
    #element should be visible   ${PlayButton_glyphicon_1}

move mouse over the "podcasts_PlayButton_2"
    sleep  5s
    wait until element is visible   ${podcasts_PlayButton_2}     10s
    #mouse over  ${PlayButton_2}
    #element should be visible   ${PlayButton_glyphicon_2}

move mouse over the "podcasts_PlayButton_3"
    sleep  5s
    wait until element is visible   ${podcasts_PlayButton_3}     10s
    #mouse over  ${PlayButton_3}
    #element should be visible   ${PlayButton_glyphicon_3}

move mouse over the "podcasts_PlayButton_4"
    sleep  5s
    wait until element is visible   ${podcasts_PlayButton_4}     10s
    #mouse over  ${PlayButton_4}
    #element should be visible   ${PlayButton_glyphicon_4}

Click on "podcasts_PlayButton_1"
    click element       ${podcasts_PlayButton_1}
    element should be visible  ${podcasts_PlayButton_glyphicon_1}
    ${text_PlayButton_1}    get element attribute   ${podcasts_PlayButton_infos_1}@text
    [Return]    ${text_PlayButton_1}

Click on "podcasts_PlayButton_2"
    click element       ${podcasts_PlayButton_2}
    element should be visible  ${podcasts_PlayButton_glyphicon_2}
    ${text_PlayButton_2}    get element attribute   ${podcasts_PlayButton_infos_1}@text
    [Return]    ${text_PlayButton_2}

Click on "podcasts_PlayButton_3"
    click element       ${podcasts_PlayButton_3}
    element should be visible  ${podcasts_PlayButton_glyphicon_3}
    ${text_PlayButton_3}    get element attribute   ${podcasts_PlayButton_infos_1}@text
    [Return]    ${text_PlayButton_3}

Click on "podcasts_PlayButton_4"
    click element       ${podcasts_PlayButton_4}
    element should be visible  ${podcasts_PlayButton_glyphicon_4}
    ${text_PlayButton_4}    get element attribute   ${podcasts_PlayButton_infos_1}@text
    [Return]    ${text_PlayButton_4}
