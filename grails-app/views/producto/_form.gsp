<%@ page import="donCangrejo.Producto" %>



<div class="fieldcontain ${hasErrors(bean: productoInstance, field: 'nombre', 'error')} ">
	<label for="nombre">
		<g:message code="producto.nombre.label" default="Nombre" />
		
	</label>
	<g:textField name="nombre" maxlength="45" value="${productoInstance?.nombre}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: productoInstance, field: 'categoria', 'error')} required">
	<label for="categoria">
		<g:message code="producto.categoria.label" default="Categoria" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="categoria" maxlength="45" required="" value="${productoInstance?.categoria}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: productoInstance, field: 'descripcion', 'error')} ">
	<label for="descripcion">
		<g:message code="producto.descripcion.label" default="Descripcion" />
		
	</label>
	<g:textField name="descripcion" value="${productoInstance?.descripcion}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: productoInstance, field: 'ingredientes', 'error')} ">
	<label for="ingredientes">
		<g:message code="producto.ingredientes.label" default="Ingredientes" />
		
	</label>
	<g:textArea name="ingredientes" cols="40" rows="5" maxlength="300" value="${productoInstance?.ingredientes}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: productoInstance, field: 'precio', 'error')} required">
	<label for="precio">
		<g:message code="producto.precio.label" default="Precio" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="precio" value="${fieldValue(bean: productoInstance, field: 'precio')}" required=""/>

</div>

