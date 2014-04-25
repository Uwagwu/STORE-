package campusstore

class Item {
	String category
	String itemName
	String itemDescription
	String numberInStock
	String itemPrice


    static constraints = {
    	category(blank: false)
    	itemName(blank:false)
    	itemDescription(blank: false, maxSize:500)
    	numberInStock(blank: false)
    	itemPrice(blank:false)
    	
    }

    String toString(){
    	return "${itemName} ${category}, ${itemPrice}"
    }
}
