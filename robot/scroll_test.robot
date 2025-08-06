*** Settings ***
Library    AppiumLibrary

*** Variables ***
${REMOTE_URL}    http://localhost:4723/wd/hub
${PLATFORM_NAME}    Android
${PLATFORM_VERSION}    11
${DEVICE_NAME}    emulator-5554
${APP}    /pfad/zur/ApiDemos-debug.apk

*** Test Cases ***
Scroll And Click Views
    Open Application    ${REMOTE_URL}    platformName=${PLATFORM_NAME}    platformVersion=${PLATFORM_VERSION}    deviceName=${DEVICE_NAME}    app=${APP}    automationName=UiAutomator2
    Scroll To Text    Views
    Click Text    Views
    [Teardown]    Close Application
