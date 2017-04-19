class Home

	def visita_home

	visit('http://www.correios.com.br/para-voce')

	end

   ## Metodos de Consulta por Cep, logradouro ou Logradouro

	def consulta_cep(cep)

		fill_in('acesso-busca', :with => cep)
			find(:xpath , '//*[@id="busca-acesso-rapido"]/form/input[2]').click

	end

	def consulta_cep(logradouro)

		fill_in('acesso-busca', :with => logradouro)
			page.save_screenshot('screenshot.png')
				find(:xpath , '//*[@id="busca-acesso-rapido"]/form/input[2]').click

	end

	def consulta_rastreamento(rastreamento)

		fill_in('P_COD_UNI', :with => rastreamento)
			find(:xpath, '//*[@id="rastreamento-obj"]/form/input[4]').click


	end

 ### Metodos de validação


	def valida_rua(rua)
		#muda de aba do navegador
		page.driver.within_window page.windows.last.handle do
			assert_text rua
				page.execute_script "window.close();"
		end
	end

		def valida_cep(cep)

			page.driver.within_window page.windows.last.handle do
				assert_text cep
					page.execute_script "window.close();"
				end
			end

	def valida_rastreamento
		page.driver.within_window page.windows.last.handle do
			has_link?('Receber por SMS')
		end
	end


end
