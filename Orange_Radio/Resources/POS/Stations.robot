*** Settings ***
Library   ExtendedSelenium2Library
*** Variables ***
${Tops stations}                 xpath=//*[@id='tab3']/div[1]/div/div[1]/h1
${Stations_maps}                 xpath=//*[@id='vmap']
${Russian Federation_map}        Css=#vmap

*** Keywords ***
Verify "Top Station" visible
    element should be visible  ${Tops stations}

select "Russian Federation"
    #${xw}  select window  vmap

    #${Russian Federation_map}
    #Click element  jquery=#vmap>svg [id^=jqvmap][id\$=_ru]
    execute javascript  window.jQuery('#vmap>svg [id^=jqvmap][id\$=_ru]').click();
    sleep  1s
