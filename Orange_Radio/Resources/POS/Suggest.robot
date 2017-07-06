*** Settings ***
Library   ExtendedSelenium2Library
*** Variables ***
${Suggest_Serch radio_Container}                                              Css=.row.col-md-9.col-sm-11.ng-scope
${Suggest_form_header}                                                        xpath=html/body/div[3]/div/div/h1
${Suggest_form_body}                                                          Css=div.page-body
${Suggest_Serch radio_body_Name label}                                        Css=.col-sm-3.control-label.ng-binding
${Suggest_Serch radio_body_Name textbox}                                      Css=#radioName
${Suggest_Serch radio_body_Add button}                                        Css=.btn.btn-form.btn-block.btn-positive.btn-success.ng-binding
${Suggest_Serch radio_body_the first element of list }                        xpath=//li[contains(@id,'typeahead')][1]
${Suggest_Serch radio_body_the second element of list }                       xpath=//li[contains(@id,'typeahead')][2]
${Suggest_Serch radio_body_text of the first element of list }                xpath=//li[contains(@id,'typeahead')][1]/a/strong
${Suggest_Serch radio_body_text of the second element of list }               xpath=//li[contains(@id,'typeahead')][2]/a/strong
${Suggest_add new radio_Container}                                            xpath=//div[@class="container ng-scope"]
${Suggest_add new radio_About you}                                            xpath=*//form/fieldset[1]/legend
${Suggest_add new radio_About the radio}                                      xpath=*//form/fieldset[2]/legend
${Suggest_add new radio_streaming}                                            xpath=*//form/fieldset[3]/legend

${Suggest_add new radio_About you_name label}                                 xpath=*//label[@class='control-label ng-binding'][@for='requesterName']
${Suggest_add new radio_About you_name textbox}                               xpath=//*[@id='requesterName']

${Suggest_add new radio_About you_Email label}                                xpath=*//label[@class='control-label ng-binding'][@for='mail']
${Suggest_add new radio_About you_Email label_asterisk}                       xpath=*//label[@class='control-label ng-binding'][@for='mail']/sup
${Suggest_add new radio_About you_Email textbox}                              xpath=//*[@id='mail']

${Suggest_add new radio_About the radio_name label}                           xpath=*//label[@class='control-label ng-binding'][@for='radio']
${Suggest_add new radio_About the radio_name label_asterisk}                  xpath=*//label[@class='control-label ng-binding'][@for='radio']/sup
${Suggest_add new radio_About the radio_name textbox}                         xpath=//*[@id='radio']

${Suggest_add new radio_About the radio_Short description label}              xpath=*//label[@class='control-label ng-binding'][@for='cdesc']
${Suggest_add new radio_About the radio_Short description label_asterisk}     xpath=*//label[@class='control-label ng-binding'][@for='cdesc']/sup
${Suggest_add new radio_About the radio_Short description textbox}            xpath=//*[@id='cdesc']

${Suggest_add new radio_About the radio_Description label}                    xpath=*//label[@class='control-label ng-binding'][@for='desc']
${Suggest_add new radio_About the radio_Description textbox}                  xpath=//*[@id='desc']

${Suggest_add new radio_About the radio_Language label}                      xpath=*//label[@class='control-label ng-binding'][@for='lang']
${Suggest_add new radio_About the radio_Language label_asterisk}             xpath=*//label[@class='control-label ng-binding'][@for='lang']/sup
${Suggest_add new radio_About the radio_Language textbox}                     xpath=//*[@id='lang']
${Suggest_add new radio_About the radio_Language listbox}                    xpath=//*[@id='lang']/ul/li

${Suggest_add new radio_About the radio_Style label}                         xpath=*//label[@class='control-label ng-binding'][@for='type']
${Suggest_add new radio_About the radio_Style textbox}                        xpath=//*[@id='type']

${Suggest_add new radio_About the radio_Country label}                        xpath=*//label[@class='control-label ng-binding'][contains(.,'Country')]
${Suggest_add new radio_About the radio_Country label_asterisk}               xpath=*//label[@class='control-label ng-binding'][contains(.,'Country')]/sup
${Suggest_add new radio_About the radio_Country textbox}                      xpath=*//div[@name="country"]

${Suggest_add new radio_About the radio_City label}                           xpath=*//label[@class='control-label ng-binding'][contains(.,'City')]
${Suggest_add new radio_About the radio_City textbox}                         xpath=*//div[@ng-model="localisation.city"]

${Suggest_add new radio_About the radio_frequency label}                      xpath=*//label[@class='control-label ng-binding'][contains(.,'frequency')]
${Suggest_add new radio_About the radio_frequency textbox}                    xpath=*//input[@ng-model="localisation.frequency"]

${Suggest_add new radio_About the radio_Web site label}                       xpath=*//label[@class='control-label ng-binding'][@for='web']
${Suggest_add new radio_About the radio_Web site label_asterisk}              xpath=*//label[@class='control-label ng-binding'][@for='web']/sup
${Suggest_add new radio_About the radio_Web site textbox}                     xpath=//*[@id='web']

${Suggest_add new radio_About the radio_Logo label}                          xpath=*//label[@class='control-label ng-binding'][@for='logo']
${Suggest_add new radio_About the radio_Logo textbox}                         xpath=//*[@id='logo']

${Suggest_add new radio_About the radio_Twitter label}                        xpath=*//label[@class='control-label ng-binding'][@for='twitter']
${Suggest_add new radio_About the radio_Twitter textbox}                      xpath=//*[@id='twitter']

${Suggest_add new radio_About the radio_Facebook label}                       xpath=*//label[@class='control-label ng-binding'][@for='facebook']
${Suggest_add new radio_About the radio_Facebook textbox}                     xpath=//*[@id='facebook']

${Suggest_add new radio_streaming_Url label_1}                               xpath=*//div[@class="ng-scope"][1]//label
${Suggest_add new radio_streaming_Url label_2}                               xpath=*//div[@class="ng-scope"][2]//label
${Suggest_add new radio_streaming_Url container}                             xpath=//*[@id='streams']
${Suggest_add new radio_streaming_Url textbox_1}                             xpath=*//div[@class="ng-scope"][1]//input[@name="url"]
${Suggest_add new radio_streaming_Url textbox_2}                             xpath=*//div[@class="ng-scope"][2]//input[@name="url"]
${Suggest_add new radio_streaming_Url textbox_Remove button}                 xpath=//*[@id='streams']//button
${Suggest_add new radio_streaming_RADIO_ADD_STREAM button}                   xpath=*//button[@class="btn btn-form btn-standard ng-binding"]

${Suggest_add new radio_streaming_RADIO_ADD_STREAM Email}                    Css=.ng-binding>a
${Suggest_form_body_Submit button}                                           xpath=//*[@id='submit']
${English}                                                                   xpath=//*[@id='lang']/ul/li/div[20]
${Blues & Jazz}                                                              xpath=//*[@id='ui-select-choices-1']/div[4]
${Dance & electro}                                                           xpath=//*[@id='ui-select-choices-1']/div[6]
${Egypte}                                                                    xpath=//a[@class='ui-select-choices-row-inner'][contains(.,'Egypt')]
${Cairo Egypt}                                                               xpath=//a[@class='ui-select-choices-row-inner'][contains(.,'Cairo,Egypt')]
${aa}                                                                        aa
*** Keywords ***
Verify "serch radio form" visible

    element should be visible       ${Suggest_Serch radio_Container}
    element should be visible       ${Suggest_form_header}
    element should be visible       ${Suggest_form_body}

Verify details of "serch radio form" visible
    element should be visible       ${Suggest_Serch radio_body_Name label}
    element should be visible       ${Suggest_Serch radio_body_Name textbox}
    element should be visible       ${Suggest_Serch radio_body_Add button}

go to "add new radio station" page
    clear element text              ${Suggest_Serch radio_body_Name textbox}
    input text                      ${Suggest_Serch radio_body_Name textbox}    aa
    element should be visible       ${Suggest_Serch radio_body_the first element of list }
    element should be visible       ${Suggest_Serch radio_body_the second element of list }
    click element                   ${Suggest_Serch radio_body_the first element of list }
    click element                   ${Suggest_Serch radio_body_Add button}



verify "add new radio station form" visible
    element should be visible       ${Suggest_add new radio_Container}
    element should be visible       ${Suggest_form_header}
    element should be visible       ${Suggest_form_body}

verify sections of "add new radio station form" visible
    element should be visible       ${Suggest_add new radio_About you}
    scroll element into view        ${Suggest_add new radio_About the radio}
    element should be visible       ${Suggest_add new radio_About the radio}
    scroll element into view        ${Suggest_add new radio_streaming}
    element should be visible       ${Suggest_add new radio_streaming}

verify name of "About you" section visible
    scroll element into view        ${Suggest_add new radio_About you}
    element should be visible       ${Suggest_add new radio_About you_name label}
    element should be visible       ${Suggest_add new radio_About you_name textbox}

verify Email of "About you" section visible
    element should be visible       ${Suggest_add new radio_About you_Email label}
    element should be visible       ${Suggest_add new radio_About you_Email textbox}

enter name of "About you" section
    clear element text              ${Suggest_add new radio_About you_name textbox}
    input text                      ${Suggest_add new radio_About you_name textbox}     orange

enter email of "About you" section
    clear element text              ${Suggest_add new radio_About you_Email textbox}
    input text                      ${Suggest_add new radio_About you_Email textbox}    orangeradio@orange.com

enter invaled email of "About you" section
    input text                      ${Suggest_add new radio_About you_Email textbox}    o
    click element                   ${Suggest_add new radio_About the radio_name textbox}
    page should contain             Please entre a valid email address

verify name of "About the radio" section visible
    scroll element into view        ${Suggest_add new radio_About the radio}
    element should be visible       ${Suggest_add new radio_About the radio_name label}
    element should be visible       ${Suggest_add new radio_About the radio_name textbox}
verify Short description of "About the radio" section visible
    element should be visible       ${Suggest_add new radio_About the radio_Short description label}
    element should be visible       ${Suggest_add new radio_About the radio_Short description textbox}
verify Description of "About the radio" section visible
    element should be visible       ${Suggest_add new radio_About the radio_Description label}
    element should be visible       ${Suggest_add new radio_About the radio_Description textbox}
verify Language of "About the radio" section visible
    element should be visible       ${Suggest_add new radio_About the radio_Language label}
    element should be visible       ${Suggest_add new radio_About the radio_Language textbox}
verify Style of "About the radio" section visible
    scroll element into view        ${Suggest_add new radio_About the radio_Style textbox}
    element should be visible       ${Suggest_add new radio_About the radio_Style label}
    element should be visible       ${Suggest_add new radio_About the radio_Style textbox}
verify Country of "About the radio" section visible
    element should be visible       ${Suggest_add new radio_About the radio_Country label}
    element should be visible       ${Suggest_add new radio_About the radio_Country textbox}
verify City of "About the radio" section visible
    element should be visible       ${Suggest_add new radio_About the radio_City label}
    element should be visible       ${Suggest_add new radio_About the radio_City textbox}
verify frequency of "About the radio" section visible
    element should be visible       ${Suggest_add new radio_About the radio_frequency label}
    element should be visible       ${Suggest_add new radio_About the radio_frequency textbox}
verify Web site of "About the radio" section visible
    element should be visible       ${Suggest_add new radio_About the radio_Web site label}
    element should be visible       ${Suggest_add new radio_About the radio_Web site textbox}
verify Logo of "About the radio" section visible
    element should be visible       ${Suggest_add new radio_About the radio_Logo label}
    element should be visible       ${Suggest_add new radio_About the radio_Logo textbox}
verify Twitter of "About the radio" section visible
    element should be visible       ${Suggest_add new radio_About the radio_Twitter label}
    element should be visible       ${Suggest_add new radio_About the radio_Twitter textbox}
verify Facebook of "About the radio" section visible
    element should be visible       ${Suggest_add new radio_About the radio_Facebook label}
    element should be visible       ${Suggest_add new radio_About the radio_Facebook textbox}

enter name of "About the radio" section
    scroll element into view        ${Suggest_add new radio_About the radio_name textbox}
    clear element text              ${Suggest_add new radio_About the radio_name textbox}
    input text                      ${Suggest_add new radio_About the radio_name textbox}      orange radio_1
enter Short description of "About the radio" section
    clear element text              ${Suggest_add new radio_About the radio_Short description textbox}
    input text                      ${Suggest_add new radio_About the radio_Short description textbox}      orange radio

enter invaled Short description of "About the radio" section
    input text                      ${Suggest_add new radio_About the radio_Short description textbox}      orange radio
    clear element text              ${Suggest_add new radio_About the radio_Short description textbox}
    page should contain             Description is mandatory

enter Description of "About the radio" section
    scroll element into view        ${Suggest_add new radio_About the radio_Description textbox}
    clear element text              ${Suggest_add new radio_About the radio_Description textbox}
    input text                      ${Suggest_add new radio_About the radio_Description textbox}            orange radio
enter Language of "About the radio" section
    scroll element into view        ${Suggest_add new radio_About the radio_name textbox}
    click element                   ${Suggest_add new radio_About the radio_Language textbox}
    click element                   ${English}
    #select from list       ${Suggest_add new radio_About the radio_Language listbox}                ${English}
enter Style of "About the radio" section
    scroll element into view        ${Suggest_add new radio_About the radio_Description textbox}
    click element                ${Suggest_add new radio_About the radio_Style textbox}
    click element                ${Blues & Jazz}
    click element                ${Suggest_add new radio_About the radio_Style textbox}
    click element                ${Dance & electro}
enter Country of "About the radio" section
    click element               ${Suggest_add new radio_About the radio_Country textbox}
    click element               ${Egypte}
enter City of "About the radio" section
    click element                ${Suggest_add new radio_About the radio_City textbox}
    click element                ${Cairo Egypt}
enter frequency of "About the radio" section
    clear element text              ${Suggest_add new radio_About the radio_frequency textbox}
    input text                      ${Suggest_add new radio_About the radio_frequency textbox}        111

enter invaled frequency of "About the radio" section
    input text                      ${Suggest_add new radio_About the radio_frequency textbox}        a
    click element                   ${Suggest_add new radio_About the radio_Web site textbox}
    page should contain             RADIO_FREQUENCY_ERR

enter Web site of "About the radio" section
    clear element text              ${Suggest_add new radio_About the radio_Web site textbox}
    input text                      ${Suggest_add new radio_About the radio_Web site textbox}        http://orange.com

delete Web site of "About the radio" section
    input text                      ${Suggest_add new radio_About the radio_Web site textbox}        http://orange.com
    clear element text              ${Suggest_add new radio_About the radio_Web site textbox}
    click element                   ${Suggest_add new radio_About the radio_Logo textbox}
    page should contain             Url is mandatory

enter invaled Web site of "About the radio" section
    input text                      ${Suggest_add new radio_About the radio_Web site textbox}        a
    clear element text              ${Suggest_add new radio_About the radio_Web site textbox}
    click element                   ${Suggest_add new radio_About the radio_Logo textbox}
    page should contain             The field must be a valid URL (http://orange.com for example)


enter Logo of "About the radio" section
    clear element text              ${Suggest_add new radio_About the radio_Logo textbox}
    input text                      ${Suggest_add new radio_About the radio_Logo textbox}            http://orange.com

enter invaled Logo of "About the radio" section
    input text                      ${Suggest_add new radio_About the radio_Logo textbox}            h
    click element                   ${Suggest_add new radio_About the radio_Twitter textbox}
    page should contain             Logo must be a valid url (ex: http://orange.com)

enter Twitter of "About the radio" section
    clear element text              ${Suggest_add new radio_About the radio_Twitter textbox}
    input text                      ${Suggest_add new radio_About the radio_Twitter textbox}        http://orange.com

enter invaled Twitter of "About the radio" section
    input text                      ${Suggest_add new radio_About the radio_Twitter textbox}        h
    click element                   ${Suggest_add new radio_About the radio_Facebook textbox}
    page should contain             Twitter must be a valid url (ex: https://twitter.com/orange)

enter Facebook of "About the radio" section
    clear element text              ${Suggest_add new radio_About the radio_Facebook textbox}
    input text                      ${Suggest_add new radio_About the radio_Facebook textbox}       http://orange.com

enter invaled Facebook of "About the radio" section
    input text                      ${Suggest_add new radio_About the radio_Facebook textbox}        h
    click element                   ${Suggest_add new radio_About the radio_Facebook textbox}
    page should contain             Facebook must be a valid url (ex: https://www.facebook.com/Orange)

verify details of "streaming" section visible
     scroll element into view       ${Suggest_add new radio_streaming_Url label_1}
     element should be visible      ${Suggest_add new radio_streaming_Url label_1}
     element should be visible      ${Suggest_add new radio_streaming_Url container}
     element should be visible      ${Suggest_add new radio_streaming_Url textbox_1}
     element should not be visible  ${Suggest_add new radio_streaming_Url textbox_Remove button}
     element should be visible      ${Suggest_add new radio_streaming_RADIO_ADD_STREAM button}
     element should be visible      ${Suggest_add new radio_streaming_RADIO_ADD_STREAM Email}
enter details of "streaming" section
    clear element text              ${Suggest_add new radio_streaming_Url textbox_1}
    input text                      ${Suggest_add new radio_streaming_Url textbox_1}       http://orange.com

enter invaled details of "streaming" section
    input text                      ${Suggest_add new radio_streaming_Url textbox_1}       ht
    page should contain              Stream must be a valid url (ex: http://orange.com:8082)

add new url in "streaming" section
    click element                   ${Suggest_add new radio_streaming_RADIO_ADD_STREAM button}
    element should be visible       ${Suggest_add new radio_streaming_Url textbox_2}
    element should be visible       ${Suggest_add new radio_streaming_Url textbox_Remove button}
    clear element text              ${Suggest_add new radio_streaming_Url textbox_2}
    input text                      ${Suggest_add new radio_streaming_Url textbox_2}       http://orange.com

remove new url in "streaming" section
    click element                   ${Suggest_add new radio_streaming_Url textbox_Remove button}
    element should not be visible   ${Suggest_add new radio_streaming_Url textbox_2}
    element should not be visible   ${Suggest_add new radio_streaming_Url textbox_Remove button}

verify "Submit" button visible
     scroll element into view       ${Suggest_add new radio_streaming_Url label_1}
     element should be visible      ${Suggest_form_body_Submit button}

click on "Submit" button
    click button                    ${Suggest_form_body_Submit button}

valed data
    enter name of "About you" section
    enter email of "About you" section
    enter name of "About the radio" section
    enter Short description of "About the radio" section
    enter Description of "About the radio" section
    enter Language of "About the radio" section
    enter Style of "About the radio" section
    enter Country of "About the radio" section
    enter City of "About the radio" section
    enter frequency of "About the radio" section
    enter Web site of "About the radio" section
    enter Logo of "About the radio" section
    enter Twitter of "About the radio" section
    enter Facebook of "About the radio" section
    enter details of "streaming" section
    choose cancel on next confirmation

empty data
    xpath should match x times  //p[@class='help-block ng-binding ng-hide']     16

invaled data
    enter name of "About you" section
    enter invaled email of "About you" section
    enter invaled Short description of "About the radio" section
    enter Description of "About the radio" section
    enter Language of "About the radio" section
    enter Style of "About the radio" section
    enter Country of "About the radio" section
    enter City of "About the radio" section
    enter invaled frequency of "About the radio" section
    delete Web site of "About the radio" section
    enter invaled Web site of "About the radio" section
    enter invaled Logo of "About the radio" section
    enter invaled Twitter of "About the radio" section
    enter invaled Facebook of "About the radio" section
    enter invaled details of "streaming" section
