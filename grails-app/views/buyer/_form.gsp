<%@ page import="com.aun.campusstore.Buyer" %>



<div class="fieldcontain ${hasErrors(bean: buyerInstance, field: 'firstName', 'error')} required">
	<label for="firstName">
		<g:message code="buyer.firstName.label" default="First Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="firstName" required="" value="${buyerInstance?.firstName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: buyerInstance, field: 'middleName', 'error')} ">
	<label for="middleName">
		<g:message code="buyer.middleName.label" default="Middle Name" />
		
	</label>
	<g:textField name="middleName" value="${buyerInstance?.middleName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: buyerInstance, field: 'lastName', 'error')} required">
	<label for="lastName">
		<g:message code="buyer.lastName.label" default="Last Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="lastName" required="" value="${buyerInstance?.lastName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: buyerInstance, field: 'phoneNumber', 'error')} required">
	<label for="phoneNumber">
		<g:message code="buyer.phoneNumber.label" default="Phone Number" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="phoneNumber" required="" value="${buyerInstance?.phoneNumber}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: buyerInstance, field: 'dorm', 'error')} required">
	<label for="dorm">
		<g:message code="buyer.dorm.label" default="Dorm" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="dorm" required="" value="${buyerInstance?.dorm}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: buyerInstance, field: 'roomNumber', 'error')} required">
	<label for="roomNumber">
		<g:message code="buyer.roomNumber.label" default="Room Number" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="roomNumber" required="" value="${buyerInstance?.roomNumber}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: buyerInstance, field: 'accountBalance', 'error')} ">
	<label for="accountBalance">
		<g:message code="buyer.accountBalance.label" default="Account Balance" />
		
	</label>
	<g:textField name="accountBalance" value="${buyerInstance?.accountBalance}"/>

</div>

