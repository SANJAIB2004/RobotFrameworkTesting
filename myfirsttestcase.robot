#*** Settings ***
#Library    SeleniumLibrary
#
#*** Keyword ***
#
#
#*** Variables ***
#${HOMEPAGE}    https://www.google.com
#${BROWSER}     chrome
#${SEARCH}      /html/body/ntp-app//div/div[2]/cr-searchbox//div/input
#${TEXT}        SANJAI
#
#*** Test Cases ***
#Open Browser
#    Open Browser    ${HOMEPAGE}    ${BROWSER}
#    Set Selenium Speed    1s
#    Maximize Browser Window
#
#
#Search on Google
##    Input Text    name=q    Sanjai
#    Input Text    xpath=${SEARCH}  ${TEXT}
#    Press Keys    xpath=${SEARCH}    RETURN
#    Sleep    5s
#    Close Browser

#*** Settings ***
#Library    SeleniumLibrary
#
#*** Variables ***
#${URL}      http://localhost:3000
#${BROWSER}  Chrome
#
#*** Test Cases ***
#Add Task To Local ToDo App
#    Open Browser    ${URL}    ${BROWSER}
#    Maximize Browser Window
#    Sleep    3s
#    Wait Until Element Is Visible    css=input.newtodo    timeout=10s
#    Input Text    css=input.newtodo    Sanjai
#    Press Keys    css=input.addtask    RETURN
#    Sleep    2s
#    Page Should Contain Element    xpath=//label[text()='Learn Robot Framework']
#    Close Browser


#*** Settings ***
#Library           SeleniumLibrary
#
#*** Variables ***
#${URL}            https://www.indianrail.gov.in/enquiry/PNR/PnrEnquiry.html?locale=en
#${BROWSER}        Chrome
#
#*** Keyword ***
#Search In Google
#       Open Browser    ${URL}    ${BROWSER}
#       Input Text      xpath=//*[@id="APjFqb"]
#       Press Keys      xpath=//*[@id="APjFqb"]    RETURN
#       Sleep           5s
#       Close Browser
#
#
#*** Test Cases ***
#Search with Text
#    Search In Google
#

*** Settings ***
Library           SeleniumLibrary

*** Variables ***
${URL}            https://www.irctc.co.in/nget/train-search
${BROWSER}        Chrome
${FROM_STATION}   MGR CHENNAI CTL - MAS
${TO_STATION}     COIMBATORE JN - CBE
${JOURNEY_DATE}   30/08/2025

*** Test Cases ***
Search Train in IRCTC
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Sleep    3s

    Click Element   xpath=/html/body/app-root/app-home/div[1]/app-header/p-dialog[2]/div/div/div[2]/div/form/div[2]/button

    #From station
    Click Element    xpath=//*[@id="origin"]/span/input
    Input Text       xpath=//*[@id="origin"]/span/input    ${FROM_STATION}
    Sleep            2s
    Press Keys       xpath=//*[@id="origin"]/span/input    RETURN

    #To station
    Click Element    xpath=//*[@id="destination"]/span/input
    Input Text       xpath=//*[@id="destination"]/span/input    ${TO_STATION}
    Sleep            2s
    Press Keys       xpath=//*[@id="destination"]/span/input    RETURN


    # Journey Date fixing
    Click Element    xpath=//*[@id="jDate"]/span/input
    Sleep            1s
    FOR  ${i}  IN RANGE  10
        Press Keys    xpath=//*[@id="jDate"]/span/input    BACKSPACE
    END
    Press Keys       xpath=//*[@id="jDate"]/span/input    30/08/2025
    Press Keys       xpath=//*[@id="jDate"]/span/input    TAB
    Sleep            2s


    #choosing the Category
    Click Element    xpath=//span[contains(text(),'GENERAL')]
    Sleep            1s
    Click Element    xpath=//span[text()='GENERAL']


    #choosing the Classes
    Click Element    xpath=//span[contains(text(),'All Classes')]
    Sleep            1s
    Click Element    xpath=//span[text()='Sleeper (SL)']


    Click Button     xpath=//button[contains(text(), 'Search')]
    Sleep            5s

#    Click Button     xpath=//*[@id="divMain"]/div/app-train-list/div[4]/div[3]/div[5]/div[3]/div[1]/app-train-avl-enq/div[2]/div/span/span/button[1]
#    sleep            2s

    Close Browser

