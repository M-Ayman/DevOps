*** Settings ***
Library   ExtendedSelenium2Library
*** Variables ***
${Download the free app}        Xpath=//*[@id='tab2']/h1
${ios_img}                      Xpath=//*[@id='tab2']//img[@src="img/visu_ios.png"]
${android_img}                  Xpath=//*[@id='tab2']//img[@src="img/visu_android.png"]
${App Store}                    Xpath=//*[@id='tab2']//a[@target='_blank']//img[@src="img/App_Store_Badge_230x68.png"]
${Google Play}                  Xpath=//*[@id='tab2']//a[@target='_blank']//img[@src="img/Google_play_badge_230x80.png"]
${desc}                         Css=div.desc
${App Store title}              title=RadioOrangeApp on the App Store
${Google Play URL}              url=https://play.google.com/store/apps/details?id=com.orange.radio.horizon&referrer=utm_source%3Dradio.orange.com%26utm_medium%3Dlogo%2520google%26utm_campaign%3DProduct%2520Installation
                                      #Orange Radio  Android Apps on Google Play
*** Keywords ***
Scroll page to "Download the free app"
    scroll element into view  ${Download the free app}

verify "Download the free app" visible
    element should be visible  ${Download the free app}

verify "IOS img" visible
    element should be visible  ${ios_img}

verify "Android img" visible
    element should be visible  ${android_img}

verify "App Store_link" visible
    element should be visible  ${App Store}

verify "Google Play_link" visible
    element should be visible  ${Google Play}

verify "Discover Orange_Text" visible
    element should be visible  ${desc}
    page should contain  Discover Orange Radio's local selection, manage your favourites and bounce on music on demand services with a unique experience.

Click on "App Store_link"
    click element       ${App Store}
    sleep  5S
    select window       ${App Store title}
    page should contain  RadioOrangeApp

Click on "Google Play_link"
    click element       ${Google Play}
    sleep  5S
    select window       ${Google Play URL}
    page should contain  Orange Radio