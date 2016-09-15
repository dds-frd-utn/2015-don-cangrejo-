package donCangrejo;

import java.lang.*;
import java.io.*;
import java.net.*;
import java.util.*;
import groovy.lang.*;
import groovy.util.*;

public class Carrito
  extends java.lang.Object  implements
    groovy.lang.GroovyObject {
;
public donCangrejo.Usuario usuario;
public java.lang.String estado;
public  groovy.lang.MetaClass getMetaClass() { return (groovy.lang.MetaClass)null;}
public  void setMetaClass(groovy.lang.MetaClass mc) { }
public  java.lang.Object invokeMethod(java.lang.String method, java.lang.Object arguments) { return null;}
public  java.lang.Object getProperty(java.lang.String property) { return null;}
public  void setProperty(java.lang.String property, java.lang.Object value) { }
public static  java.lang.Object getHasMany() { return null;}
public static  void setHasMany(java.lang.Object value) { }
public static  java.lang.Object getBelongsTo() { return null;}
public static  void setBelongsTo(java.lang.Object value) { }
public static  java.lang.Object getMapping() { return null;}
public static  void setMapping(java.lang.Object value) { }
public static  java.lang.Object getConstraints() { return null;}
public static  void setConstraints(java.lang.Object value) { }
public  java.lang.Object setUsuario(donCangrejo.Usuario u) { return null;}
public  java.lang.Object setEstado(java.lang.String e) { return null;}
public  java.lang.Object setVenta(donCangrejo.Venta v) { return null;}
public  java.lang.Object seteoPedidos() { return null;}
public  donCangrejo.Usuario getUsuario() { return (donCangrejo.Usuario)null;}
public  java.lang.String getEstado() { return (java.lang.String)null;}
public  donCangrejo.Venta getVenta() { return (donCangrejo.Venta)null;}
public  java.lang.Object inicializarListaPedidos() { return null;}
public  java.lang.Object total() { return null;}
@grails.transaction.Transactional() public  java.lang.Object addPedido(donCangrejo.Pedido unPedido) { return null;}
}
