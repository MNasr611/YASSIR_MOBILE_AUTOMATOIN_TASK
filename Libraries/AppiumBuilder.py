from appium import webdriver
from appium.webdriver.appium_service import AppiumService
import time




# Start the Appium server
def StartAppium(appium_address,appium_port):
    print(appium_address)
    print(appium_port)
    args = [
    "--address", str(appium_address), 
    "--port", str(appium_port),
    "--log-no-colors",
    "--base-path", '/wd/hub'
]
    appium_service = AppiumService()
    appium_service.start(args=args)
    return appium_service




def StopAppium(appium_service):
    appium_service.stop()