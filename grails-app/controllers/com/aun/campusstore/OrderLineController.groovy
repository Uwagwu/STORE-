package com.aun.campusstore



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class OrderLineController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond OrderLine.list(params), model:[orderLineInstanceCount: OrderLine.count()]
    }

    def show(OrderLine orderLineInstance) {
        respond orderLineInstance
    }

    def create() {
        respond new OrderLine(params)
    }

    @Transactional
    def save(OrderLine orderLineInstance) {
        if (orderLineInstance == null) {
            notFound()
            return
        }

        if (orderLineInstance.hasErrors()) {
            respond orderLineInstance.errors, view:'create'
            return
        }

        orderLineInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'orderLineInstance.label', default: 'OrderLine'), orderLineInstance.id])
                redirect orderLineInstance
            }
            '*' { respond orderLineInstance, [status: CREATED] }
        }
    }

    def edit(OrderLine orderLineInstance) {
        respond orderLineInstance
    }

    @Transactional
    def update(OrderLine orderLineInstance) {
        if (orderLineInstance == null) {
            notFound()
            return
        }

        if (orderLineInstance.hasErrors()) {
            respond orderLineInstance.errors, view:'edit'
            return
        }

        orderLineInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'OrderLine.label', default: 'OrderLine'), orderLineInstance.id])
                redirect orderLineInstance
            }
            '*'{ respond orderLineInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(OrderLine orderLineInstance) {

        if (orderLineInstance == null) {
            notFound()
            return
        }

        orderLineInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'OrderLine.label', default: 'OrderLine'), orderLineInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'orderLineInstance.label', default: 'OrderLine'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
