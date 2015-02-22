#Scenario Getting to the registration form

  Given(/^I am on the homepage$/) do
    visit ('/')
  end

  When(/^I follow "(.*?)"$/) do |register|
    click_on('New Game')
  end

  Then(/^I should see "(.*?)"$/) do |form|
    expect(page).to have_content("What's your name?")
  end


#Scenario Registration process

  Given(/^I am on the register page$/) do
    visit ('/register')
  end

  When(/^I enter my name$/) do
    fill_in('name', :with => 'Joe')
    click_on('Submit')
    expect(page).not_to have_content("Please choose your mass destruction weapon")
    expect(page).to have_content("Please enter your name")
  end

  Then(/^I should be successfully registered$/) do
    visit ('/choose')
  end