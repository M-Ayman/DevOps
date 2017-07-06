*** Settings ***
Library   ExtendedSelenium2Library
Library   OperatingSystem
*** Variables ***
${footer container}                             xpath=//footer
${flolow orange radio footer}                   xpath=//footer/div[1]
${flolow orange radio text}                     xpath=//footer//h3
${flolow orange radio footer_facebook icon}     css=.fa.fa-facebook
${flolow orange radio footer_facebook url}      url=https://www.facebook.com/OrangeRadioOff/
${flolow orange radio footer_twitter icon}      css=.fa.fa-twitter
${flolow orange radio footer_twitter url}       url=https://twitter.com/orangewebradio
${Orange Radio provides footer}                 xpath=//footer/div[2]
${orange 2015 footer}                           xpath=//footer/div[3]
*** Keywords ***
check the footer
    element should be visible                   ${footer container}
go to footer
    scroll element into view                    ${footer container}
check the first section content of footer
    element should be visible                   ${flolow orange radio footer}
    element should be visible                   ${flolow orange radio text}
    page should contain                         Follow Orange Radio
    element should be visible                   ${flolow orange radio footer_facebook icon}
    element should be visible                   ${flolow orange radio footer_twitter icon}

check the second section content of footer
    element should be visible                   ${Orange Radio provides footer}

    ${file content}     get file                ./Resources/Data/footer.text
    page should contain                         ${file content}

check the third section content of footer
    element should be visible                   ${orange 2015 footer}
    page should contain                         © Orange 2015

click on "facebook" icon
      click element                             ${flolow orange radio footer_facebook icon}
      sleep  5s
      select window                             ${flolow orange radio footer_facebook url}

click on "twitter" icon
      click element                             ${flolow orange radio footer_twitter icon}
      sleep  5s
      select window                             ${flolow orange radio footer_twitter url}

click on "orange 2015"
       click element                             ${orange 2015 footer}
