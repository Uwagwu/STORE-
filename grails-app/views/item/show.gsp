
<%@ page import="com.aun.campusstore.Item" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'item.label', default: 'Item')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-item" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-item" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list item">
			
				<g:if test="${itemInstance?.category}">
				<li class="fieldcontain">
					<span id="category-label" class="property-label"><g:message code="item.category.label" default="Category" /></span>
					
						<span class="property-value" aria-labelledby="category-label"><g:fieldValue bean="${itemInstance}" field="category"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${itemInstance?.itemName}">
				<li class="fieldcontain">
					<span id="itemName-label" class="property-label"><g:message code="item.itemName.label" default="Item Name" /></span>
					
						<span class="property-value" aria-labelledby="itemName-label"><g:fieldValue bean="${itemInstance}" field="itemName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${itemInstance?.itemDescription}">
				<li class="fieldcontain">
					<span id="itemDescription-label" class="property-label"><g:message code="item.itemDescription.label" default="Item Description" /></span>
					
						<span class="property-value" aria-labelledby="itemDescription-label"><g:fieldValue bean="${itemInstance}" field="itemDescription"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${itemInstance?.numberInStock}">
				<li class="fieldcontain">
					<span id="numberInStock-label" class="property-label"><g:message code="item.numberInStock.label" default="Number In Stock" /></span>
					
						<span class="property-value" aria-labelledby="numberInStock-label"><g:fieldValue bean="${itemInstance}" field="numberInStock"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${itemInstance?.itemPrice}">
				<li class="fieldcontain">
					<span id="itemPrice-label" class="property-label"><g:message code="item.itemPrice.label" default="Item Price" /></span>
					
						<span class="property-value" aria-labelledby="itemPrice-label"><g:fieldValue bean="${itemInstance}" field="itemPrice"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:itemInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${itemInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
