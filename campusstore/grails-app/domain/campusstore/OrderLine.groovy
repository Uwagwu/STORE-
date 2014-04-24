package campusstore

class OrderLine {
	String orderLineItemId
	String orderLineOrderId
	String orderLineCost
	Date deliveryDate
	String deliveryStatus
	Item item
	Order order

    static constraints = {
    	orderLineItemId(blank:false)
    	orderLineOrderId(blank:false)
    	orderLineCost(blank:false)
    	deliveryDate()
    	deliveryStatus(blank:false)
    }
    String toString(){
    	return "${orderLineItemId}, ${orderLineOrderId}"
    }
}
