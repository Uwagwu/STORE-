
<%@ page import="com.aun.campusstore.Buyer" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'buyer.label', default: 'Buyer')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-buyer" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-buyer" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list buyer">
			
				<g:if test="${buyerInstance?.firstName}">
				<li class="fieldcontain">
					<span id="firstName-label" class="property-label"><g:message code="buyer.firstName.label" default="First Name" /></span>
					
						<span class="property-value" aria-labelledby="firstName-label"><g:fieldValue bean="${buyerInstance}" field="firstName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${buyerInstance?.middleName}">
				<li class="fieldcontain">
					<span id="middleName-label" class="property-label"><g:message code="buyer.middleName.label" default="Middle Name" /></span>
					
						<span class="property-value" aria-labelledby="middleName-label"><g:fieldValue bean="${buyerInstance}" field="middleName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${buyerInstance?.lastName}">
				<li class="fieldcontain">
					<span id="lastName-label" class="property-label"><g:message code="buyer.lastName.label" default="Last Name" /></span>
					
						<span class="property-value" aria-labelledby="lastName-label"><g:fieldValue bean="${buyerInstance}" field="lastName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${buyerInstance?.phoneNumber}">
				<li class="fieldcontain">
					<span id="phoneNumber-label" class="property-label"><g:message code="buyer.phoneNumber.label" default="Phone Number" /></span>
					
						<span class="property-value" aria-labelledby="phoneNumber-label"><g:fieldValue bean="${buyerInstance}" field="phoneNumber"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${buyerInstance?.dorm}">
				<li class="fieldcontain">
					<span id="dorm-label" class="property-label"><g:message code="buyer.dorm.label" default="Dorm" /></span>
					
						<span class="property-value" aria-labelledby="dorm-label"><g:fieldValue bean="${buyerInstance}" field="dorm"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${buyerInstance?.roomNumber}">
				<li class="fieldcontain">
					<span id="roomNumber-label" class="property-label"><g:message code="buyer.roomNumber.label" default="Room Number" /></span>
					
						<span class="property-value" aria-labelledby="roomNumber-label"><g:fieldValue bean="${buyerInstance}" field="roomNumber"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${buyerInstance?.accountBalance}">
				<li class="fieldcontain">
					<span id="accountBalance-label" class="property-label"><g:message code="buyer.accountBalance.label" default="Account Balance" /></span>
					
						<span class="property-value" aria-labelledby="accountBalance-label"><g:fieldValue bean="${buyerInstance}" field="accountBalance"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:buyerInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${buyerInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
