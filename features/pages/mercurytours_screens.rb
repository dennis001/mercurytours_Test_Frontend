class PageHome < SitePrism::Page
	set_url "http://www.newtours.demoaut.com/"

		element :usuario, "input[name='userName']"
		element :password, "input[name='password']"
		element :login_button, "input[name='login']"
    element :preferences, "input[value='First']"
    element :text, "input[name='findFlights']"
    element :depart, "input[value='Blue Skies Airlines$361$271$7:10']"
    element :retorno, "input[value='Blue Skies Airlines$631$273$14:30']"
		element :reserv, "input[name='reserveFlights']"
		element :firstName, "input[name='passFirst0']"
		element :lastName, "input[name='passLast0']"
		element :creditnumber, "input[name='creditnumber']"
		element :securePurchase, "input[name='buyFlights']"
		element :flightConfirm, "td[class='frame_header_info']"

	def login_test(nome, senha)
		usuario.set(nome)
		password.set(senha)
  end

  def flight_details
    select "London", :from => "fromPort"
    select "December", :from => "fromMonth"
    select "20", :from => "fromDay"
    select "October", :from => "toMonth"
    select "21", :from => "toDay"
  end

  def select_flight
    depart.click
    retorno.click
  end

	def book_depart
		assert_text "Blue Skies Airlines 361"
		assert_text "Blue Skies Airlines 631"
	end

	def passengers
		firstName.set(Faker::Name.first_name)
		lastName.set(Faker::Name.last_name)
		creditnumber.set(Faker::Number.number(16))
	end

def element
	assert_any_of_selectors('.frame_header_info > table > tbody > tr > td > b > font > font > b')
end

end
