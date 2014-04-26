<%@ page import="com.aun.campusstore.Item" %>



<div class="fieldcontain ${hasErrors(bean: itemInstance, field: 'category', 'error')} required">
	<label for="category">
		<g:message code="item.category.label" default="Category" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="category" required="" value="${itemInstance?.category}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: itemInstance, field: 'itemName', 'error')} required">
	<label for="itemName">
		<g:message code="item.itemName.label" default="Item Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="itemName" required="" value="${itemInstance?.itemName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: itemInstance, field: 'itemDescription', 'error')} required">
	<label for="itemDescription">
		<g:message code="item.itemDescription.label" default="Item Description" />
		<span class="required-indicator">*</span>
	</label>
	<g:textArea name="itemDescription" cols="40" rows="5" maxlength="500" required="" value="${itemInstance?.itemDescription}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: itemInstance, field: 'numberInStock', 'error')} required">
	<label for="numberInStock">
		<g:message code="item.numberInStock.label" default="Number In Stock" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="numberInStock" required="" value="${itemInstance?.numberInStock}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: itemInstance, field: 'itemPrice', 'error')} required">
	<label for="itemPrice">
		<g:message code="item.itemPrice.label" default="Item Price" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="itemPrice" required="" value="${itemInstance?.itemPrice}"/>

</div>

