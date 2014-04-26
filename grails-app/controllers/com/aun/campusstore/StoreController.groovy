package com.aun.campusstore
import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class StoreController {
def storeService // Where you implement utility methods
    def index() { }
    
    def addToCart(Item item){
      // hint: use a session object for this 
        def cart = findCart()
        def orderLine = new OrderLine()// you guys have to populate the order line with properties
        cart.add(orderLine)
        
        redirect(action:'index')
    }
    
    
    def checkout(){
        // implement your checkout flow from here...
        def cart = findCart()
        // check to make sure the cart is not empty somewhere in your checkout flow
    }
    
    
    def findCart() {
       if(session.cart){ // if the session already has a cart 
           return session.cart // return the cart and its contents
       } 
       else{
           session.cart = [] // create a new cart (list)
           return session.cart  // return the cart
       }
    }
}
