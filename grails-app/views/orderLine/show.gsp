
<%@ page import="com.aun.campusstore.OrderLine" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'orderLine.label', default: 'OrderLine')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-orderLine" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-orderLine" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list orderLine">
			
				<g:if test="${orderLineInstance?.item}">
				<li class="fieldcontain">
					<span id="item-label" class="property-label"><g:message code="orderLine.item.label" default="Item" /></span>
					
						<span class="property-value" aria-labelledby="item-label"><g:link controller="item" action="show" id="${orderLineInstance?.item?.id}">${orderLineInstance?.item?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${orderLineInstance?.quantity}">
				<li class="fieldcontain">
					<span id="quantity-label" class="property-label"><g:message code="orderLine.quantity.label" default="Quantity" /></span>
					
						<span class="property-value" aria-labelledby="quantity-label"><g:fieldValue bean="${orderLineInstance}" field="quantity"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${orderLineInstance?.total}">
				<li class="fieldcontain">
					<span id="total-label" class="property-label"><g:message code="orderLine.total.label" default="Total" /></span>
					
						<span class="property-value" aria-labelledby="total-label"><g:fieldValue bean="${orderLineInstance}" field="total"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${orderLineInstance?.deliveryDate}">
				<li class="fieldcontain">
					<span id="deliveryDate-label" class="property-label"><g:message code="orderLine.deliveryDate.label" default="Delivery Date" /></span>
					
						<span class="property-value" aria-labelledby="deliveryDate-label"><g:formatDate date="${orderLineInstance?.deliveryDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${orderLineInstance?.deliveryStatus}">
				<li class="fieldcontain">
					<span id="deliveryStatus-label" class="property-label"><g:message code="orderLine.deliveryStatus.label" default="Delivery Status" /></span>
					
						<span class="property-value" aria-labelledby="deliveryStatus-label"><g:fieldValue bean="${orderLineInstance}" field="deliveryStatus"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${orderLineInstance?.order}">
				<li class="fieldcontain">
					<span id="order-label" class="property-label"><g:message code="orderLine.order.label" default="Order" /></span>
					
						<span class="property-value" aria-labelledby="order-label"><g:link controller="orders" action="show" id="${orderLineInstance?.order?.id}">${orderLineInstance?.order?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:orderLineInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${orderLineInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
