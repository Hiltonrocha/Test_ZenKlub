Before do 
    @home = HomePage.new
    @sign_in = LoginPage.new
    @logged_area = LoggedArea.new
end

After do |scenario|
    $sufix =  ('failed' if scenario.failed?) || 'passed'
    take_screenshot(scenario.name)
end