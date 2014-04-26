<%@ page import="com.aun.campusstore.Staff" %>



<div class="fieldcontain ${hasErrors(bean: staffInstance, field: 'firstName', 'error')} required">
	<label for="firstName">
		<g:message code="staff.firstName.label" default="First Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="firstName" required="" value="${staffInstance?.firstName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: staffInstance, field: 'middleName', 'error')} ">
	<label for="middleName">
		<g:message code="staff.middleName.label" default="Middle Name" />
		
	</label>
	<g:textField name="middleName" value="${staffInstance?.middleName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: staffInstance, field: 'lastName', 'error')} required">
	<label for="lastName">
		<g:message code="staff.lastName.label" default="Last Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="lastName" required="" value="${staffInstance?.lastName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: staffInstance, field: 'position', 'error')} required">
	<label for="position">
		<g:message code="staff.position.label" default="Position" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="position" required="" value="${staffInstance?.position}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: staffInstance, field: 'phoneNumber', 'error')} required">
	<label for="phoneNumber">
		<g:message code="staff.phoneNumber.label" default="Phone Number" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="phoneNumber" required="" value="${staffInstance?.phoneNumber}"/>

</div>

