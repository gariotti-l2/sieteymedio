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
  click_button "Plantarse"
end

When(/^banca pide carta y saco (\d+)$/) do |carta|
  puts "Carta:" + carta.to_s
  @@juego.proximaCarta carta.to_i
  puts "Carta acutal: " + @@juego.cartaActual.to_s
  puts "Puntaje: " + @@juego.puntajeBanca.to_s
  @@juego.pideCartaBanca
  visit '/dothings'
end



