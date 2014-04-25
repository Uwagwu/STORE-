package campusstore

class OrderLine {
    static belongsTo = [order:Orders]
        Item item
        int quantity // quanity of items in order
	BigDecimal total
	Date deliveryDate
	String deliveryStatus
	
	//Order order

    static constraints = {
        item(nullable:false,blank:false)
        quantity(nullable:false,blank:false,min:0)
        total(nullable:false,blank:false,min:0.0)
        deliveryDate(nullable:true,blank:true)
        deliveryStatus(nullable:false,blank:false)
    }
    String toString(){
    	return "${item}, ${order}"
    }
}
