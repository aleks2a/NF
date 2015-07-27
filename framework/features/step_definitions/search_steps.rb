Given(/^I launch my device with Coupa page$/) do
  launch_driver
  home_screen.get_home
end

Given(/^I launch my browser with Coupa page$/) do
  launch_browser
  home_screen.get_home
end


And(/^I press on expand menu button$/) do
  home_screen.expand_menu.click
end


Then(/^I press on Search button$/) do
  page_actions.wait_for_element_displayed(60){home_screen.search_button}
  home_screen.search_button.click
end


Then(/^I type "(.*?)" to search field$/) do |email|
  page_actions.wait_for_element_exists(60){home_screen.search_field}
  home_screen.search_field.send_keys(email)
end


When(/^I press on GO button to initiate search$/) do
  home_screen.go_search.click
end


Then(/^I expect to get search results$/) do
  expect(search_result.search_results?).to be_truthy
end


