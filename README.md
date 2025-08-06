# Mobile Testing Demo with Appium & Robot Framework

This repository contains a collection of mobile test automation examples built using **Appium** and **Robot Framework**, targeting Android applications running on emulator environments.

The goal of this project is to gain hands-on experience with automated UI testing for mobile apps, explore testing strategies, and practice working with tools commonly used in industry.

---

## 🛠 Technologies Used

- **Appium** – Mobile UI automation for Android
- **Robot Framework** – Keyword-driven test automation framework
- **Android Emulator** (Pixel 4, API 30)
- **Python** – Test scripting and automation logic
- **Exploratory Testing** – Manual testing methodology

---

## 📁 Project Structure
bosch-mobile-testing-demo/
├── appium/ # Python-based Appium test cases
│ ├── login_test.py
│ ├── scroll_and_click.py
│ └── negative_test.py
├── robot/ # Robot Framework test cases
│ ├── login_test.robot
│ ├── scroll_test.robot
│ └── error_handling.robot
├── exploratory/ # Exploratory test notes
│ └── explorative-testbericht.md

## ✅ Test Scenarios

| Test Name              | Description                                               |
|------------------------|-----------------------------------------------------------|
| `login_test`           | Automates login flow with username validation             |
| `scroll_and_click`     | Scrolls through a list and interacts with hidden elements |
| `negative_test`        | Simulates invalid login and verifies error handling       |
| `explorative-testbericht` | Manual notes and findings from exploratory testing      |

All test scenarios use the official Appium demo app `ApiDemos.apk`, which is commonly used for training and experimentation in mobile automation.

---

## 📌 Why This Project

As part of my learning journey in test automation, I wanted to:
- Practice designing and writing mobile test cases
- Gain familiarity with real-world testing tools like Appium and Robot Framework
- Explore best practices in UI testing and error handling
