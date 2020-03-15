package com.test.StepDefinitions;

import com.test.Configuration.DeviceHelper;
import com.test.Configuration.LocalDriverManager;
import com.test.Screens.AuthScreen;
import cucumber.api.java.en.And;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import io.appium.java_client.TouchAction;
import io.appium.java_client.pagefactory.AppiumFieldDecorator;
import io.appium.java_client.touch.offset.PointOption;
import org.openqa.selenium.interactions.Actions;
import org.openqa.selenium.support.PageFactory;

public class AuthPage extends DeviceHelper {

    AuthScreen authScreen = new AuthScreen();

    public AuthPage() {
        PageFactory.initElements(new AppiumFieldDecorator(LocalDriverManager.getDriver()), authScreen);
    }

    @Given("^I Launch the app and I am on Register Screen$")
    public void ILaunchtheappandIamonRegisterScreen() throws Throwable {


        LocalDriverManager.getDriver().get("http://t388.pgsoft-template-staging.aonewallet.com");
        //Registerbutton

        new TouchAction(LocalDriverManager.getDriver()).tap(PointOption.point(1234,1476)).perform();


        Thread.sleep(1000);
    }

    @When("^I enter \"([^\"]*)\" and \"([^\"]*)\" and Retry \"([^\"]*)\"$")
    public void IenterusernameandpasswordandRetryPassword(String username,String password,String Rpassword) throws InterruptedException {


        //username
        new TouchAction(LocalDriverManager.getDriver()).tap(PointOption.point(594,1182)).perform();

        Actions keyAction = new Actions(LocalDriverManager.getDriver());
        keyAction.sendKeys(username).perform();
        LocalDriverManager.getDriver().hideKeyboard();
        //password
        (new TouchAction(LocalDriverManager.getDriver())).tap(PointOption.point(583,1373)).perform();

        keyAction.sendKeys(password).perform();
        LocalDriverManager.getDriver().hideKeyboard();
        //Retry-password
        (new TouchAction(LocalDriverManager.getDriver())).tap(PointOption.point(700,1550)).perform();

        keyAction.sendKeys(Rpassword).perform();

        LocalDriverManager.getDriver().hideKeyboard();
    }



    @When("^I click eye icon to show the password$")
    public void Iclickeyeicontoshowthepassword() throws Throwable {
        (new TouchAction(LocalDriverManager.getDriver())).tap(PointOption.point(1182,1373)).perform();


    }

    @And("^I click eye icon to hide the password$")
    public void Iclickeyeicontohidethepassword() throws Throwable {
        (new TouchAction(LocalDriverManager.getDriver())).tap(PointOption.point(1177,1564)).perform();


    }

    @When("^I enter the captcha$")
    public void Ienterthecaptcha() throws Throwable {
        //Captcha
        Actions keyAction = new Actions(LocalDriverManager.getDriver());
        (new TouchAction(LocalDriverManager.getDriver())).tap(PointOption.point(650,1750)).perform();

        keyAction.sendKeys("QWED").perform();
        LocalDriverManager.getDriver().hideKeyboard();
    }

    @And("^I click Register Button$")
    public void IclickRegisterButton() throws Throwable {
        //Register
        (new TouchAction(LocalDriverManager.getDriver())).tap(PointOption.point(700,1920)).perform();

    }

    @Then("^I verify that I error message$")
    public void IverifythatIerrormessage() throws Throwable {

    }

}
