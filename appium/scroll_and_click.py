from appium import webdriver
from appium.webdriver.common.mobileby import MobileBy

desired_caps = {
    "platformName": "Android",
    "platformVersion": "11",
    "deviceName": "emulator-5554",
    "automationName": "UiAutomator2",
    "app": "/pfad/zur/ApiDemos-debug.apk"
}

driver = webdriver.Remote("http://localhost:4723/wd/hub", desired_caps)

element = driver.find_element(MobileBy.ANDROID_UIAUTOMATOR,
    'new UiScrollable(new UiSelector().scrollable(true))'
    '.scrollIntoView(new UiSelector().text("Views"))')
element.click()

driver.quit()
