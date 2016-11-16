Shoes.app :title => "Login com Shoes" do

  class Actions
    @myApp

    def initialize(myApp)
      @myApp = myApp

    end

    def doLogin(username, password)
      @myApp.app do
        if username == "natan" and password == "123"
          alert "Logado com sucesso"
          background black
        else
          alert "Login e/ou Senha incorreto(s)"
        end      
      end
    end
  end

  stack margin: 30 do
    @myActions = Actions.new(self)
    
    username = edit_line
    password = edit_line

    button "login" do
      @myActions.doLogin(username.text, password.text)
    end
  end
end