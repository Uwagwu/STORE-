package com.aun.campusstore

class Orders {
    static hasMany = {orderLine: OrderLine}
    
        Date orderDate
        Buyer buyer 
	
	


    static constraints = {
        orderDate(nullable:false,blank:false)
    }

    String toString(){
    	return "${buyer}, ${orderDate}"
    }
}
