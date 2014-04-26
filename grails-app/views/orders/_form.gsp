<%@ page import="com.aun.campusstore.Orders" %>



<div class="fieldcontain ${hasErrors(bean: ordersInstance, field: 'orderDate', 'error')} required">
	<label for="orderDate">
		<g:message code="orders.orderDate.label" default="Order Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="orderDate" precision="day"  value="${ordersInstance?.orderDate}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: ordersInstance, field: 'buyer', 'error')} required">
	<label for="buyer">
		<g:message code="orders.buyer.label" default="Buyer" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="buyer" name="buyer.id" from="${com.aun.campusstore.Buyer.list()}" optionKey="id" required="" value="${ordersInstance?.buyer?.id}" class="many-to-one"/>

</div>

