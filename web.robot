*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}               https://www.tutorialspoint.com/selenium/practice/webtables.php#
${BROWSER}           Chrome

${FIRSTNAME}         sanjai
${LASTNAME}          CSE
${EMAIL}             sanjai@example.com
${AGE}               22
${SALARY}            20000
${DEPARTMENT}        CSE

${UPDATED_DEPARTMENT}   AIML

*** Test Cases ***
Open Browser and Load Form
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Wait Until Page Contains Element    id=RegisterForm

Fill Form and Submit
    Input Text    id=firstname     ${FIRSTNAME}
    Input Text    id=lastname      ${LASTNAME}
    Input Text    id=email         ${EMAIL}
    Input Text    id=age           ${AGE}
    Input Text    id=salary        ${SALARY}
    Input Text    id=deparment     ${DEPARTMENT}
    Click Button  xpath=//input[@type='submit' and @value='Login']
    Sleep         1s

Search Entry in Table
    Input Text     xpath=/html/body/main/div/div/div[2]/form/div[1]/span[2]/div/input     ${EMAIL}
    Sleep          1s


Edit Entry
    Click Element    xpath=/html/body/main/div/div/div[2]/form/div[2]/table/tbody/tr[1]/td[7]/a[1]
    Sleep            1s
    Clear Element Text    id=deparment
    Input Text      id=deparment     ${UPDATED_DEPARTMENT}
    Click Button    xpath=//input[@type='submit']
    Sleep           1s

Delete Entry
    Click Element    xpath=/html/body/main/div/div/div[2]/form/div[2]/table/tbody/tr[1]/td[7]/a[2]
    Handle Alert     ACCEPT
    Sleep            1s

Close Browser
    Close Browser

