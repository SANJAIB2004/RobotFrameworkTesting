*** Settings ***
Library   SeleniumLibrary

*** Variables ***
${LOGIN_URL}   https://www.tutorialspoint.com/selenium/practice/login.
${REGISTER_URL}  https://www.tutorialspoint.com/selenium/practice/register.php
${TEXTFIELD}   https://www.tutorialspoint.com/selenium/practice/text-box.php
${CHECK_URL}   https://www.tutorialspoint.com/selenium/practice/check-box.php
${RADIO_URL}   https://www.tutorialspoint.com/selenium/practice/radio-button.php
${WEB_URL}    https://www.tutorialspoint.com/selenium/practice/webtables.php
${BUTTON_URL}  https://www.tutorialspoint.com/selenium/practice/buttons.php
${LINK_URL}   https://www.tutorialspoint.com/selenium/practice/links.php
${BROKEN_URL}  https://www.tutorialspoint.com/selenium/practice/broken-links.php
${UPLOAD_URL}  https://www.tutorialspoint.com/selenium/practice/upload-download.php
${FORM_URL}   https://www.tutorialspoint.com/selenium/practice/selenium_automation_practice.php
${CURDIR}   C:/Users/sanja/Downloads/sampleFile.jpeg"
${BROWSER}  chrome
${EMAIL}  sanjai@gmail.com
${FIRSTNAME}  SANJAI
${LASTNAME}   CSE
${USERNAME}  sanjai
${PASSWORD}  12345678
${ADDRESS}   CHENNAI
${PHONE}   9898989878
${SUBJECT}  TESTING

*** Keywords ***
Login Page
    Open Browser  ${LOGIN_URL}  ${BROWSER}
    Maximize Browser Window
    Sleep  2s

    Click Element  xpath=//input[@name='email']
    Input Text  xpath=//input[@name='email']  ${EMAIL}
    Sleep  2s
    Press Keys  xpath=//input[@name='email']  RETURN

    Click Element  xpath=//input[@name='password']
    Input Text  xpath=//input[@name='password']  ${PASSWORD}
    Sleep  2s
    Press Keys  xpath=//input[@name='password']  RETURN


    Click Button  xpath=//*[@id="signInForm"]/div[3]/input
    Sleep  2s

    Close Browser

REGISTER PAGE

    Open Browser  ${REGISTER_URL}  ${BROWSER}
    Maximize Browser Window
    Sleep  2s

    Click Element  xpath=//input[@name='firstname']
    Input Text  xpath=//input[@name='firstname']  ${FIRSTNAME}
    Sleep  2s
    Press Keys  xpath=//input[@name='firstname']  RETURN

    Click Element  xpath=//input[@name='lastname']
    Input Text  xpath=//input[@name='lastname']  ${LASTNAME}
    Sleep  2s
    Press Keys  xpath=//input[@name='lastname']  RETURN

    Click Element  xpath=//input[@name='username']
    Input Text  xpath=//input[@name='username']  ${USERNAME}
    Sleep  2s
    Press Keys  xpath=//input[@name='username']  RETURN

    Click Element  xpath=//input[@name='password']
    Input Text  xpath=//input[@name='password']  ${PASSWORD}
    Sleep  2s
    Press Keys  xpath=//input[@name='password']  RETURN


    Click Button  xpath=//*[@id="signupForm"]/div[5]/input
    Sleep  3s

#    Click Button  xpath=//*[@id="signupForm"]/div[5]/a
#    Sleep  5s

#    Close Browser

TEXT FIELD

    Open Browser  ${TEXTFIELD}  ${BROWSER}
    Maximize Browser Window
    Sleep  2s

    Click Element  xpath=//input[@name='fullname']
    Input Text  xpath=//input[@name='fullname']  ${FIRSTNAME}
    Sleep  2s
    Press Keys  xpath=//input[@name='fullname']  RETURN

    Click Element  xpath=//input[@name='email']
    Input Text  xpath=//input[@name='email']  ${EMAIL}
    Sleep  2s
    Press Keys  xpath=//input[@name='email']  RETURN

    Click Element  xpath=//*[@id="address"]
    Input Text  xpath=//*[@id="address"]  ${ADDRESS}
    Sleep  2s
    Press Keys  xpath=//*[@id="address"]  RETURN

    Click Element  xpath=//input[@name='password']
    Input Text  xpath=//input[@name='password']  ${PASSWORD}
    Sleep  2s
    Press Keys  xpath=//input[@name='password']  RETURN

    Click Button  //*[@id="TextForm"]/div[5]/input

#    Close Browser

CHECK BOX
    Open Browser  ${CHECK_URL}  ${BROWSER}
    Maximize Browser Window
    Sleep  2s

    Page Should Contain Checkbox  xpath=//*[@id="c_bs_1"]
    Select Checkbox  xpath=//*[@id="c_bs_1"]
    Sleep  2s

#    Page Should Contain Checkbox  xpath=//*[@id="c_bs_1"]
#    Checkbox Should Not Be Selected  xpath=//*[@id="c_bs_1"]
#    Sleep  1s
#    Click Element  //*[@id="bs_1"]/span[1] RETURN
#    Sleep  1s

    Page Should Contain Checkbox  xpath=//*[@id="c_bf_1"]
    Select Checkbox  xpath=//*[@id="c_bf_1"]
    Sleep  5s



    Page Should Contain Checkbox  xpath=//*[@id="c_bs_2"]
    Select Checkbox  xpath=//*[@id="c_bs_2"]
    Sleep  5s

#    Close Browser

RADIO BUTTON
    Open Browser  ${RADIO_URL}  ${BROWSER}
    Maximize Browser Window
    Sleep  2s

    Page Should Contain Radio Button  name=tab
    Select Radio Button  tab  igottwo
    Radio Button Should Be Set To  tab  igottwo

    Page Should Contain Radio Button  name=tab
    Select Radio Button  tab  igotthree
    Radio Button Should Be Set To  tab  igotthree


    Sleep  2s
#    Close Browser


#WEB TABLE
#    Open Browser  ${WEB_URL}  ${BROWSER}
#

BUTTON TABLE
    Open Browser  ${BUTTON_URL}  ${BROWSER}
    Maximize Browser Window
    Sleep  2s

    Page Should Contain Button  xpath=/html/body/main/div/div/div[2]/button[1]
    Click Button  xpath=/html/body/main/div/div/div[2]/button[1]
    Sleep  2s

    Page Should Contain Button  xpath=/html/body/main/div/div/div[2]/button[2]
    Click Button  xpath=/html/body/main/div/div/div[2]/button[2]
    Sleep  2s

    Page Should Contain Button  xpath=/html/body/main/div/div/div[2]/button[3]
    Click Button  xpath=/html/body/main/div/div/div[2]/button[3]
    Double Click Element   xpath=/html/body/main/div/div/div[2]/button[3]
    Sleep  2s

#    Close Browser

LINK PAGE
    Open Browser  ${LINK_URL}  ${BROWSER}
    Maximize Browser Window
    Sleep  1s

    Page Should Contain Link  xpath=/html/body/main/div/div/div[2]/p[1]/a
    Click Link  xpath=/html/body/main/div/div/div[2]/p[1]/a
    Sleep  3s

    Page Should Contain Link  xpath=//*[@id="created"]
    Click Link  xpath=//*[@id="created"]
    Sleep  3s

    Close Browser

BROKEN PAGE
    Open Browser  ${BROKEN_URL}  ${BROWSER}
    Maximize Browser Window
    Sleep  1s

    Page Should Contain Link  xpath=/html/body/main/div/div/div[2]/p[3]/a
    Click Link  xpath=/html/body/main/div/div/div[2]/p[3]/a
    Sleep  3s

    Page Should Contain Link  xpath=/html/body/main/div/h4/a
    Click Link  xpath=/html/body/main/div/h4/a
    Sleep  2s

    Close Browser


UPLOAD DOWNLOAD
    Open Browser  ${UPLOAD_URL}  ${BROWSER}
    Maximize Browser Window
    Sleep  1s

    Page Should Contain Link  xpath=//*[@id="downloadButton"]
    Click Link  xpath=//*[@id="downloadButton"]
    Sleep  2s

#    Page Should Contain Link  xpath=//*[@id="uploadFile"]
    Choose File  id:uploadFile  ${CURDIR}
    Sleep  2s

    Close Browser

FORM PAGE
    Open Browser  ${FORM_URL}  ${BROWSER}
    Maximize Browser Window
    Sleep  1s

    Click Element  id=name
    Input Text  id=name  ${USERNAME}
    Sleep  1s
#    Press Key  id=name  RETURN

    Click Element  id=email
    Input Text  id=email  ${EMAIL}
    Sleep  1s
#    Press Key  id=email   RETURN

    Click Element  id=gender
    Sleep  1s

    Click Element  id=mobile
    Input Text  id=mobile  ${PHONE}
    Sleep  1s
#    Press Key  id=mobile    RETURN


    Click Element  id=dob
    Input Text    id=dob    31-12-2004
    Sleep  1s
#    Press Key   id=dob  RETURN

    Click Element  id=subjects
    Input Text  id=subjects  ${SUBJECT}
    Sleep  1s
#    Press Key  id=subjects  RETURN

    Page Should Contain Checkbox  xpath=//*[@id="hobbies"]
    Select Checkbox  xpath=//*[@id="hobbies"]
    Sleep  1s

    Choose File  xpath=//input[@name='picture']  ${CURDIR}
    Sleep  1s

    Click Element  xpath=//textarea[@name='picture']
    Input Text  xpath=//textarea[@name='picture']   ${ADDRESS}
    Sleep  1s

    Click Element  xpath=//*[@id="state"]/option[1]
    Sleep  1s
    Click Element  xpath=//*[@id="state"]/option[2]

    Click Element  xpath=//*[@id="city"]/option[1]
    Sleep  1s
    Click Element  xpath=//*[@id="city"]/option[2]


    Click Button  xpath=//*[@id="practiceForm"]/div[11]/input
    Sleep  3s

    Close Browser








*** Test Cases ***
FORM PAGE
#    REGISTER PAGE
#    TEXT FIELD
#    CHECK BOX
#    RADIO BUTTON
#    WEB TABLE
#    BUTTON TABLE
#    LINK PAGE
#    BROKEN PAGE
#    UPLOAD DOWNLOAD
    FORM PAGE





#    Login Page





