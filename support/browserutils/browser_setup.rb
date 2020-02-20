$browser

class BrowserSetup

  def self.get_browser(os, platform,noreset=false,fullreset=true)
    $browser = case ENV['PLATFORM'].upcase
      when 'CHROME'
        load_chrome(os)
      else
        raise "Invalid Platform => #{platform} for the OS => #{os}"
    end
    $browser.manage.delete_all_cookies if ENV['APPLICATION'].upcase == 'WEBSITE'
    $browser.manage.timeouts.implicit_wait = 5
    $browser
  end

  def self.load_chrome(os)
    p "*********************************************************"
    p "Test Started:: Invoking Chrome #{ENV['DEVICE']}..!"
    if os.casecmp('mac').zero?
        caps=Selenium::WebDriver::Remote::Capabilities.chrome("chromeOptions" => {"args" => ["disable-extensions", "--disable-web-security", "start-maximized", "window-size=1500,1500"], "useAutomationExtension" => false})
        $browser = Selenium::WebDriver.for :chrome, desired_capabilities: caps,http_client: $client 
    end
  end
end