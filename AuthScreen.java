package com.test.Screens;

import io.appium.java_client.pagefactory.AndroidFindBy;
import io.appium.java_client.pagefactory.iOSFindBy;
import org.openqa.selenium.WebElement;

public class AuthScreen {

    @AndroidFindBy(id = "submit")
    @iOSFindBy(xpath = "")
    public WebElement okButton;

    @AndroidFindBy(xpath = "//*[@resource-id = 'signup']")
    @iOSFindBy(xpath = "")
    public WebElement Register;

    @AndroidFindBy(xpath = "//*[@resource-id = 'username']")
    @iOSFindBy(xpath = "")
    public WebElement username;

    @AndroidFindBy(xpath = "//android.widget.Button[@text = 'Register']")
    @iOSFindBy(xpath = "")
    public WebElement password;
}
