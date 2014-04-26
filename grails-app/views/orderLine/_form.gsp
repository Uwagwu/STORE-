<%@ page import="com.aun.campusstore.OrderLine" %>



<div class="fieldcontain ${hasErrors(bean: orderLineInstance, field: 'item', 'error')} required">
	<label for="item">
		<g:message code="orderLine.item.label" default="Item" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="item" name="item.id" from="${com.aun.campusstore.Item.list()}" optionKey="id" required="" value="${orderLineInstance?.item?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: orderLineInstance, field: 'quantity', 'error')} required">
	<label for="quantity">
		<g:message code="orderLine.quantity.label" default="Quantity" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="quantity" type="number" min="0" value="${orderLineInstance.quantity}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: orderLineInstance, field: 'total', 'error')} required">
	<label for="total">
		<g:message code="orderLine.total.label" default="Total" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="total" value="${fieldValue(bean: orderLineInstance, field: 'total')}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: orderLineInstance, field: 'deliveryDate', 'error')} ">
	<label for="deliveryDate">
		<g:message code="orderLine.deliveryDate.label" default="Delivery Date" />
		
	</label>
	<g:datePicker name="deliveryDate" precision="day"  value="${orderLineInstance?.deliveryDate}" default="none" noSelection="['': '']" />

</div>

<div class="fieldcontain ${hasErrors(bean: orderLineInstance, field: 'deliveryStatus', 'error')} required">
	<label for="deliveryStatus">
		<g:message code="orderLine.deliveryStatus.label" default="Delivery Status" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="deliveryStatus" required="" value="${orderLineInstance?.deliveryStatus}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: orderLineInstance, field: 'order', 'error')} required">
	<label for="order">
		<g:message code="orderLine.order.label" default="Order" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="order" name="order.id" from="${com.aun.campusstore.Orders.list()}" optionKey="id" required="" value="${orderLineInstance?.order?.id}" class="many-to-one"/>

</div>

