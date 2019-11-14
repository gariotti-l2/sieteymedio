Given /^Abro el juego$/ do
  visit '/'
end

Then /^debo ver "(.*)"$/ do |text|
  last_response.body.should =~ /#{text}/m
end

When(/^pido carta y saco (\d+)$/) do |carta|
  @@juego.proximaCarta carta.to_i
  click_button("Dame una carta")
end

When(/^jugador se planta$/) do
  click_button("Me Planto")
end

When(/^banca pide carta y saco (\d+)$/) do |carta|
  @@juego.proximaCarta carta.to_i
  @@juego.pideCartaBanca
  visit '/dothings'
end



