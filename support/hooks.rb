AfterConfiguration do |config|
    $client = Selenium::WebDriver::Remote::Http::Default.new
    $client.read_timeout = 180
  end
  
  Before do |scenario|
      @browser = BrowserSetup.get_browser(ENV['OS'], ENV['PLATFORM'],false,true) #if @reset_flag_counter == 0
  end
  
  After do |scenario|
    @browser.quit
  end