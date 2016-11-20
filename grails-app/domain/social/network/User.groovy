package social.network

class User {

    String firstName
    String lastName
    String email
    String passwordHash
    String gender
    Date birthDay
    boolean admin
    static hasMany = [friends: User]

    static constraints = {
      firstName size: 3..75, blank: false, nullable: false
      lastName size: 3..75, blank: false, nullable: false
      email email: true, unique: true, blank: false, nullable: false
      passwordHash password: true, size: 8..20, blank: false, nullable: false
      gender inList: ["Male", "Female"]
      friends display: false
      admin nullable: false, default: false, display: false
    }
}
