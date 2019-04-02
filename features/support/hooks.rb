Before do
	#puts 'Inicio da Execucao'
end

After do |scenario|
	if scenario.failed?
		#exec codigo que tira print
	end
end
