Shoes.app(title: "Bem vindos", width: 600, height: 400)  do
	stack margin: 10 do

		stack margin: 10 do
			background gainsboro
			subtitle "Ruby Paulo Afonso"
			tagline "Ruby Shoes"
		end

		flow do
			minhas_imagens = {
				search: "Pesquisar",
				print: "Imprimir",
				notes: "Bloco de Notas",
				image: "Fotografia",
				cd: "Blue-Ray"
			}

			minhas_imagens.each do |nome, texto|
				stack width: 100 do
					image "images/#{nome.to_s}.png", width: 40, height: 40
					para texto
				end
			end	
		end
	end

	stack margin: 10 do
		background gainsboro
		para "Listas"
		list_box items: ["Item 1","Item 2","Item 3"]
		button "Lets Go" do
			alert "Selecionado Item"
		end
	end
end