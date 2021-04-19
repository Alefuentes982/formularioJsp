<%-- 
    Document   : newjsp
    Created on : 19-04-2021, 00:24:49
    Author     : I7_6700
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>clase 18</title>
    </head>

    <body>
        <h1>Formulario con JSP</h1>
        <form method="post"> 
            <table>
                <tr>
                    <td>Ingrese nombre</td>
                    <td><input name="nombre" type="text" required></td>
                </tr>
                <tr>
                    <td>Apellido</td>
                    <td><Input name="apellido" type="text" required></td>
                </tr>
                <tr>
                    <td>Edad</td>
                    <td><Input name="edad" type="number" required></td>
                </tr>

                <tr>
                    <td>Lenguaje preferido

                <select name="lenguaje">
                    <option>JSP</option> 
                    <option>JAVA</option> 
                    <option>JS</option>
                    <option>PHP</option> 
                </select>
</td>
                </tr>

                 <tr>
                    <td>intereses
                <br />

                <input name="intereses" type="radio" value="diseno"/>Diseño

                <br />

                <input name="intereses" type="radio" value="programacion"/>Programacion

                <br />

                <input name="intereses" type="radio" value="Modelado" checked="checked" />Modelado

                <br />

                <input name="intereses" type="radio" value="Gerencia de proyectos"/>Gerencia de proyectos
                </td>
                </tr>
               


                <tr>
                    <td colspan="2">
                        <button type="Submit">Enviar</button>
                    </td>
                </tr>
            </table>
        </form>

        <table>
            <tr>
                <td> 
                    <%
                        if (request.getMethod().equals("POST")) {

                            String nombre, apellido, edad, lenguaje, intereses;

                            nombre = request.getParameter("nombre");
                            apellido = request.getParameter("apellido");
                            edad = request.getParameter("edad");
                            lenguaje = request.getParameter("lenguaje");
                            intereses = request.getParameter("intereses");

                            out.print("tu nombre es " + nombre + apellido);
                            out.print("</br>");
                            out.print("tienes " + edad);
                            out.print("</br>");
                            out.print("tu lenguaje favorito es " + lenguaje); 
                            out.print("</br>");
                            out.print("y prefieres el(la) " + intereses);
                            out.print("</br>");
                            out.print("Bienvenid@ a jsp " + nombre);
                        }
                    %>
                </td>
            </tr>
        </table>
    </body>

</html>
