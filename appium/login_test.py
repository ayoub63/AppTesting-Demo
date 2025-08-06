from appium import webdriver
from selenium.webdriver.common.by import By
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.support import expected_conditions as EC

desired_caps = {
    "platformName": "Android",
    "platformVersion": "11",
    "deviceName": "emulator-5554",
    "automationName": "UiAutomator2",
    "app": "/pfad/zur/ApiDemos-debug.apk"
}

driver = webdriver.Remote("http://localhost:4723/wd/hub", desired_caps)

driver.find_element(By.ID, "com.example:id/username").send_keys("testuser")
driver.find_element(By.ID, "com.example:id/password").send_keys("pass123")
driver.find_element(By.ID, "com.example:id/login").click()

WebDriverWait(driver, 10).until(
    EC.presence_of_element_located((By.ID, "com.example:id/profileName"))
)

assert driver.find_element(By.ID, "com.example:id/profileName").text == "Test User"
driver.quit()
