Given /^Abro el juego$/ do
  visit '/'
end

Then /^debo ver "(.*)"$/ do |text|
  last_response.body.should =~ /#{text}/m
end

When(/^pido carta y saco (\d+)$/) do |carta|
  @@juego.proximaCarta carta.to_i
  click_button "Otra"
end

