package campusstore

class Staff {
	String firstName
	String middleName
	String lastName
	String position
	String phoneNumber

	//static hasMany = {order:Order}

    static constraints = {
    	firstName(blank:false)
    	middleName()
    	lastName(blank:false)
    	position(blank:false)
    	phoneNumber(blank:false)
    }

    String toString(){
    	return "${firstName} ${lastName}, ${position}"
    }
}
