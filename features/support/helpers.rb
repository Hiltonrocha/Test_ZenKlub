require 'fileutils'

module Helpers
    
    def take_screenshot(scenario_name)
        scenario_name = scenario_name.gsub(" ", "_")
        scenario_name = scenario_name.gsub(",", "")
        scenario_name = scenario_name.gsub("(", "")
        scenario_name = scenario_name.gsub(")", "")
        scenario_name = scenario_name.gsub("#", "")
        
        time = Time.now.strftime("%Y-%m-%d %H%M")
        screenshot_path = './reports/screenshot/' + "#{BROWSER}" + '-' + "#{$sufix}" + '-' + scenario_name + '-'+ time + '.png'
        save_screenshot(screenshot_path.upcase!)
      end

end
