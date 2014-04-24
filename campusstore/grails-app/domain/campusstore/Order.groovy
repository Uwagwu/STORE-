package campusstore

class Order {
	String quantity
	Date orderDate
	String orderStaffId
	String orderBuyerId
	String orderDeliveryId
	Buyer buyer 
	Staff staff

	static hasMany = {orderLine: OrderLine}


    static constraints = {
    	quantity(blank:false)
    	orderStaffId(blank:false)
    	orderBuyerId(blank:false)
    	orderDeliveryId(blank:false)
    }

    String toString(){
    	return "${orderBuyerId}, ${orderDate}"
    }
}
