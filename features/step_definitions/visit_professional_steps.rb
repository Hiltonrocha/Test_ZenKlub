Given("I access Zenklub.com") do
    @home.load
    @home.btn_login.click
end
  
When("I sign in with email and password valid") do
    @sign_in.make_sign_in(DATA['email'], DATA['password'])
end
  
Then("I should be redirected to session page") do
    @logged_area.wait_until_ours_specialist_button_visible
    expect(page.current_path).to eql '/profile/sessions/'
end
  
Then("should not have any session scheduled") do
    expect(@logged_area.text_none_specialist.text).to eql MESSAGE['any_session_scheduled_msg']
end

Given('I access ours specialist page') do
    steps %Q{
        Given I access Zenklub.com 
        When I sign in with email and password valid
    }
    @logged_area.ours_specialist_button.click
    expect(page.current_path).to eql '/busca/'
end
  
When('I click to see more info about the first professional') do
    @logged_area.wait_until_more_info_about_visible
    @logged_area.more_info_about[0].click
end
  
Then('i should be see the info about the professional') do
    expect(page).to have_css('h3.text-left', text: 'Perfil')
    expect(page).to have_css('#show-chat-with-professional', text: 'Chat com Especialista')
    expect(page).to have_css('.user_info')    
end