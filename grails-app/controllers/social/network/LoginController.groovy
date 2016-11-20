package social.network

class LoginController {

    def index() {
      render view: 'login'
    }

    def login() {
      def email = params['email']
      def pass = params['password']

      def user = User.findByEmailAndPasswordHash(email, pass)
      if (user != null) {
          session['user'] = user
          redirect uri: "/"
          return
      }
      def emailMap = [email: email]
      redirect emailMap: emailMap, action:"index", method:"GET"
    }

    def logout() {
        if (session.user != null) {
            session.user = null;
        }
        redirect uri: "/"
    }
}
