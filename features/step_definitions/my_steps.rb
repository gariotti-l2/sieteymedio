Given /^Abro el juego$/ do
  visit '/'
end

Then /^debo ver "(.*)"$/ do |text|
  last_response.body.should =~ /#{text}/m
end

When(/^pido carta y saco (\d+)$/) do |carta|
  visit '/pidecarta', :post, "proximaCarta=" + carta
end

When(/^jugador se planta$/) do
  visit '/meplanto', :post, "auto=false"
end

When(/^banca pide carta y saco (\d+)$/) do |carta|
  @@juego.proximaCarta carta.to_i
  @@juego.pideCartaBanca
  visit '/dothings'
end



