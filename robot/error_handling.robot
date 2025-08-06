*** Settings ***
Library    AppiumLibrary

*** Variables ***
${REMOTE_URL}    http://localhost:4723/wd/hub
${PLATFORM_NAME}    Android
${PLATFORM_VERSION}    11
${DEVICE_NAME}    emulator-5554
${APP}    /pfad/zur/ApiDemos-debug.apk

*** Test Cases ***
Invalid Login Test
    Open Application    ${REMOTE_URL}    platformName=${PLATFORM_NAME}    platformVersion=${PLATFORM_VERSION}    deviceName=${DEVICE_NAME}    app=${APP}    automationName=UiAutomator2
    Input Text    id=com.example:id/username    testuser
    Input Text    id=com.example:id/password    wrongpass
    Click Element    id=com.example:id/login
    Page Should Contain Text    Invalid credentials
    [Teardown]    Close Application
