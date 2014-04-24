package campusstore

class Buyer {
	String firstName
	String middleName
	String lastName
	String phoneNumber
	String dorm
	String roomNumber
	String accountBalance

	static hasMany = {order:Order}

    static constraints = {
    	firstName(blank:false)
    	middleName()
    	lastName(blank: false)
    	phoneNumber(blank:false)
    	dorm(blank:false)
    	roomNumber(blank:false)
    	accountBalance()
    }

    String toString(){
    	return "${firstName} ${lastName}, ${phoneNumber}"
    }
}
