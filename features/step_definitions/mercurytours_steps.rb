Dado("que eu esteja logado") do
  @home = PageHome.new
  @home.load
  @home.login_test('mercury','mercury')
  @home.login_button.click
end

Quando("defino os detalhes da viagem com {string},{string},{string},{string},{string}, {string} e classe") do |ida, mes_ida, dia_ida, volta, mes_volta, dia_volta|
  @home.flight_details(ida,mes_ida,dia_ida,volta,mes_volta,dia_volta)
  @home.preferences.click
  @home.text.click
  @home.select_flight
  @home.reserv.click
end

Quando("preencher meus dados") do
  @home.book_depart
  @home.passengers
  @home.securePurchase.click
end

Entao("valido se Foi gerado o Flight confirmation NUMBER com sucesso") do
  @home.flightConfirmacao
end
