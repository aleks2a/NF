require 'bundler'
# require_relative "page_actions"

Bundler.require(:default)

DEFAULT_DEVICE = 'iPad Air'
DEFAULT_TIMEOUT = 3600

def caps
  { caps:       { deviceName: (ENV['DEVICE'] || DEFAULT_DEVICE),
                  platformName: 'iOS',
                  platformVersion: (ENV['SDK'] || '8.2'),
                  orientation: 'portrait',
                  newCommandTimeout: '36000',
                  safariInitialUrl: 'http://www.netflix.com',
                  browserName: 'Safari'
                  }}
end

def launch_driver
  Appium::Driver.new(caps)
  Appium.promote_appium_methods(App)
  Appium.promote_appium_methods(PageActions)
  start_driver
end


World { App.new }


After do |scenario|

  if scenario.failed?
    screenshots_dir = File.join(File.dirname(__FILE__), "..", ".." , "screenshots")
    if !File.directory?(screenshots_dir)
      raise "!!!Cannot capture screenshots!!! Screenshot directory #{screenshots_dir} exists but isn't a directory" if File.exists? screenshots_dir
      FileUtils.mkdir_p(screenshots_dir)
    end
    time_stamp = Time.now.strftime("%Y-%m-%d_at_%H.%M.%S").to_s
    screenshot_name = "#{time_stamp}_failure_#{scenario.name.gsub(/[^\w`~!@#\$%&\(\)_\-\+=\[\]\{\};:',]/, '-')}.png"
    screenshot_file = File.join(screenshots_dir, screenshot_name)
    copy = 0
    while File.exists?(screenshot_file)
      copy += 1
      screenshot_name = "#{screenshot_name}_#{copy}"
      screenshot_file = File.join(screenshots_dir, screenshot_name)
    end
    driver.save_screenshot(screenshot_file)
    embed("screenshots/#{screenshot_name}", 'image/png')

  end

  driver.quit
end
