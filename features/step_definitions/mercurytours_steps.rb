Dado("que eu esteja logado") do
  @home = PageHome.new
  @home.load
  @home.login_test('mercury','mercury')
  @home.login_button.click
end

Quando("escolho a compania de viagem e classe") do
  @home.flight_details
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
  #binding.pry
  @home.element
end
