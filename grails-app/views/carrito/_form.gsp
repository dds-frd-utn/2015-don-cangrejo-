<%@ page import="donCangrejo.Carrito" %>



<div class="fieldcontain ${hasErrors(bean: carritoInstance, field: 'estado', 'error')} required">
	<label for="estado">
		<g:message code="carrito.estado.label" default="Estado" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="estado" maxlength="1" required="" value="${carritoInstance?.estado}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: carritoInstance, field: 'usuario', 'error')} required">
	<label for="usuario">
		<g:message code="carrito.usuario.label" default="Usuario" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="usuario" name="usuario.id" from="${donCangrejo.Usuario.list()}" optionKey="id" required="" value="${carritoInstance?.usuario?.id}" class="many-to-one"/>

</div>

