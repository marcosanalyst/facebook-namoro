*** Settings ***
Library    AppiumLibrary
Library    OperatingSystem
Library    String
Library    DateTime
Library    String
Resource        routes.robot

*** Keywords ***

Abrir aplicativo facebook
    Open Application    http://localhost:4723/wd/hub
    ...     platformName=Android
    ...     deviceName=moto_e40
    ...     udid=ZF523W638Q
    ...     appPackage=com.facebook.katana
    ...     appActivity=com.facebook.katana.LoginActivity
    ...     automationName=UIAutomator2
    ...     autoGrantPermissions=${True}
    ...     noReset=${True}
    ...     fullReset=${False}

Fechar aplicativo facebook
    Close All Applications

