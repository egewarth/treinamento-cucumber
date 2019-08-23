class PaginaInicial < SitePrism::Page
    include Capybara::DSL

    element :username, "#username"
    element :login_btn, "input[type='submit']"

    def login()
        username.set('64760537104')
        login_btn.click()
    end
  end