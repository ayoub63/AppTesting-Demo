*** Settings ***
Library    AppiumLibrary

*** Variables ***
${REMOTE_URL}    http://localhost:4723/wd/hub
${PLATFORM_NAME}    Android
${PLATFORM_VERSION}    11
${DEVICE_NAME}    emulator-5554
${APP}    /pfad/zur/ApiDemos-debug.apk

*** Test Cases ***
Login With Valid User
    Open Application    ${REMOTE_URL}    platformName=${PLATFORM_NAME}    platformVersion=${PLATFORM_VERSION}    deviceName=${DEVICE_NAME}    app=${APP}    automationName=UiAutomator2
    Input Text    id=com.example:id/username    testuser
    Input Text    id=com.example:id/password    pass123
    Click Element    id=com.example:id/login
    Wait Until Page Contains Element    id=com.example:id/profileName
    Element Text Should Be    id=com.example:id/profileName    Test User
    [Teardown]    Close Application
