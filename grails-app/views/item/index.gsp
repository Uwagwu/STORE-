
<%@ page import="com.aun.campusstore.Item" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'item.label', default: 'Item')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-item" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-item" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="category" title="${message(code: 'item.category.label', default: 'Category')}" />
					
						<g:sortableColumn property="itemName" title="${message(code: 'item.itemName.label', default: 'Item Name')}" />
					
						<g:sortableColumn property="itemDescription" title="${message(code: 'item.itemDescription.label', default: 'Item Description')}" />
					
						<g:sortableColumn property="numberInStock" title="${message(code: 'item.numberInStock.label', default: 'Number In Stock')}" />
					
						<g:sortableColumn property="itemPrice" title="${message(code: 'item.itemPrice.label', default: 'Item Price')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${itemInstanceList}" status="i" var="itemInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${itemInstance.id}">${fieldValue(bean: itemInstance, field: "category")}</g:link></td>
					
						<td>${fieldValue(bean: itemInstance, field: "itemName")}</td>
					
						<td>${fieldValue(bean: itemInstance, field: "itemDescription")}</td>
					
						<td>${fieldValue(bean: itemInstance, field: "numberInStock")}</td>
					
						<td>${fieldValue(bean: itemInstance, field: "itemPrice")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${itemInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
