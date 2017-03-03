<%-- 
    Document   : ListaCursos
    Created on : 18/02/2017, 23:22:24
    Author     : miromar
--%>

<%@page import="br.com.Model.CdtrCurso"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lista Cursos</title>
    </head>
    <body>
              <jsp:include page="menu.jsp"/>
            <h1>Lista Cursos!</h1>
            <table class="table-striped">
                <tr bgcolor="#CCCCCC">
                    <td>Cod.</td>
                    <td>Curso</td>               
                </tr>
                <% List<CdtrCurso> lista = (List<CdtrCurso> )request.getAttribute("lista");
                for(CdtrCurso curso : lista){
                    
               %>
            
                <tr>
                    <td><%=curso.getCursPk()%></td>
                    <td><%=curso.getCursDescricao()%></td>
                </tr>
            <%}%>
            <a href="Curso.do?acao=cadCurso"><input type="button" class="btn btn-danger" value="Cadastrar Curso"></a>

        </table> 
    </body>
</html>
