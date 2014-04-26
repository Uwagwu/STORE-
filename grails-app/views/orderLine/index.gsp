
<%@ page import="com.aun.campusstore.OrderLine" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'orderLine.label', default: 'OrderLine')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-orderLine" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-orderLine" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<th><g:message code="orderLine.item.label" default="Item" /></th>
					
						<g:sortableColumn property="quantity" title="${message(code: 'orderLine.quantity.label', default: 'Quantity')}" />
					
						<g:sortableColumn property="total" title="${message(code: 'orderLine.total.label', default: 'Total')}" />
					
						<g:sortableColumn property="deliveryDate" title="${message(code: 'orderLine.deliveryDate.label', default: 'Delivery Date')}" />
					
						<g:sortableColumn property="deliveryStatus" title="${message(code: 'orderLine.deliveryStatus.label', default: 'Delivery Status')}" />
					
						<th><g:message code="orderLine.order.label" default="Order" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${orderLineInstanceList}" status="i" var="orderLineInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${orderLineInstance.id}">${fieldValue(bean: orderLineInstance, field: "item")}</g:link></td>
					
						<td>${fieldValue(bean: orderLineInstance, field: "quantity")}</td>
					
						<td>${fieldValue(bean: orderLineInstance, field: "total")}</td>
					
						<td><g:formatDate date="${orderLineInstance.deliveryDate}" /></td>
					
						<td>${fieldValue(bean: orderLineInstance, field: "deliveryStatus")}</td>
					
						<td>${fieldValue(bean: orderLineInstance, field: "order")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${orderLineInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
