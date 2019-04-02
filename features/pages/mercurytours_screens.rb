class PageHome < SitePrism::Page
	set_url "http://www.newtours.demoaut.com/"

		element :usuario, "input[name='userName']"
		element :password, "input[name='password']"
		element :login_button, "input[name='login']"
		element :departing_from, "select[name='fromPort']"
		element :on_mouth, "select[name='fromMonth']"
		element :on_day, "select[name='fromDay']"
		element :arriving_in, "select[name='toPort']"
		element :returning_mouth, "select[name='toMonth']"
		element :returning_day, "select[name='toDay']"
		element :preferences, "input[value='First']"
    element :text, "input[name='findFlights']"
    element :depart, "input[value='Blue Skies Airlines$361$271$7:10']"
    element :retorno, "input[value='Blue Skies Airlines$631$273$14:30']"
		element :from, "b['Blue Skies Airlines 361']"
		element :back, "b['Blue Skies Airlines 631']"
		element :reserv, "input[name='reserveFlights']"
		element :firstName, "input[name='passFirst0']"
		element :lastName, "input[name='passLast0']"
		element :creditnumber, "input[name='creditnumber']"
		element :securePurchase, "input[name='buyFlights']"
		element :flightConfirm, '.frame_header_info > table > tbody > tr > td > b > font > font > b > font'

	def login_test(nome, senha)
		usuario.set(nome)
		password.set(senha)
  end

  def flight_details(ida, mes_ida, dia_ida, volta, mes_volta, dia_volta)
		departing_from.select(ida)
		on_mouth.select(mes_ida)
		on_day.select(dia_ida)
		arriving_in.select(volta)
		returning_mouth.select(mes_volta)
		returning_day.select(dia_volta)
  end

  def select_flight
    depart.click
    retorno.click
  end

	def book_depart
		assert_text("Blue Skies Airlines 361")
		assert_text("Blue Skies Airlines 631")
	end

	def passengers
		firstName.set(Faker::Name.first_name)
		lastName.set(Faker::Name.last_name)
		creditnumber.set(Faker::Number.number(16))
	end

	def flightConfirmacao
		binding.pry
		i = find('.frame_header_info > table > tbody > tr > td > b > font > font > b > font', match: :first)
		return i
	end

end
