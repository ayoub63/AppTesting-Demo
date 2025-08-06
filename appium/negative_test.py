from appium import webdriver
from selenium.webdriver.common.by import By

desired_caps = {
    "platformName": "Android",
    "platformVersion": "11",
    "deviceName": "emulator-5554",
    "automationName": "UiAutomator2",
    "app": "/pfad/zur/ApiDemos-debug.apk"
}

driver = webdriver.Remote("http://localhost:4723/wd/hub", desired_caps)

driver.find_element(By.ID, "com.example:id/username").send_keys("testuser")
driver.find_element(By.ID, "com.example:id/password").send_keys("wrongpass")
driver.find_element(By.ID, "com.example:id/login").click()

error_text = driver.find_element(By.ID, "com.example:id/errorMessage").text
assert "Invalid credentials" in error_text

driver.quit()
