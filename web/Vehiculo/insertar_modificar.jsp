<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@include file = "../_top.jsp" %>
<h2>Vehiculos</h2>
<br/>
<form name="form_vehiculo" onsubmit="return validar();"
      action="${pageContext.servletContext.contextPath}/Vehiculos?accion=insertar_modificar" method="POST">
    <table border="0" id="table">
        <thead>
            <tr>
                <th colspan ="">Complete la información<br><br></th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>ID Vehiculo</td>
                <td><input type="text" name="txtIdvehiculo" value="${vehiculo.idvehiculo}" readonly="readonly" /></td>
            </tr>
            <tr>
                <td>Numero de pasajeros</td>
                <td><input type="number" name="txtPasajeros" id="txtPasajeros" value="${vehiculo.numero_pasajeros}" /></td>
            </tr>
            <tr>
                <td>Placa</td>
                <td><input type="text" name="txtPlaca" id="txtPlaca" value="${vehiculo.placa}"/></td>
            </tr>
            <tr>
                <td>Marca</td>
                <td>
                    <input type="text" name="txtMarca" id="txtMarca" value="${vehiculo.marca}"/>
                </td>
            </tr>
            <tr>
                <td>Tipo</td>
                <td>
                    <input type="text" name="txtTipo" id="txtTipo" value="${vehiculo.tipo}"/>
                </td>
            </tr>
            <tr>
                <td>Descripcion</td>
                <td><textarea name="txtDescripcion" id="txtDescripcion" rows="7" cols="22">${vehiculo.descripcion}</textarea></td>
            </tr>
            <tr>
                <td>Precio</td>
                <td><input type="number" step="0.01" name="txtPrecio" id="txtPrecio" value="${vehiculo.precio}"/></td>
            </tr>
        </tbody>
    </table>
    <br/>
    <div class="buttons">
        <ul>
            <li><input type="submit" value="Guardar" name="guardar" id="Res"/></li>
            <li><a href="#" onclick="javascript: return window.history.back()" id="Res">Regresar</a></li>
        </ul>
    </div>
</form>
<script>
    function validar() {
        var mejora = document.getElementById('txtSeguro');
        var precio = document.getElementById('txtPrecio');
        var detalle = document.getElementById('txtDetalle');
        if (mejora.value.length == 0 || precio.value.length == 0 || detalle.value.length == 0) {
            mejora.focus();
            alert("Complete todos los campos.");
            return false;
        }
        return true;
    }
</script>
<%@include file = "../_down.jsp" %>

