package social.network

class LoginController {

    def index() {
      render view: 'login'
    }

    def login() {
      render "Registro!"
    }
}
