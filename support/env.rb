require 'page-object'
require 'selenium-webdriver'
require 'require_all'
require 'rubygems'
require 'rspec/expectations'
require 'cucumber'

require_all 'library'

World(PageObject::PageFactory)

PageObject.default_element_wait=(30)
PageObject.default_page_wait=(30)

$current_os = ENV['OS'].to_s
$current_platform = ENV['APPLICATION'].to_s