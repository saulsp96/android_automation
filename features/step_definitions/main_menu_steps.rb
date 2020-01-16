Given(/^I land on home screen$/) do
  puts("Landed on home screen")
end

When(/^I press on menu icon$/) do
  puts("Menu icon pressed")
end

Then(/^I should see left side menu$/) do
  puts("Left side menu shown")
end

When("I press on My conversions button") do
  puts("My conversions button pressed")
end

Then("I land on My conversions screen") do
  puts("Landed")
end