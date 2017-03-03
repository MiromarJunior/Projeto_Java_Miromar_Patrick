<%-- 
    Document   : ListaFuncao
    Created on : 05/02/2017, 19:00:25
    Author     : Patrick
--%>

<%@page import="java.util.List"%>
<%@page import="br.com.Model.CdtrFuncao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/bootstrap.css" type="text/css"/>
       
        <title>JSP Page</title>
    </head>
    <body>
        <jsp:include page="menu.jsp"/>
            <h1>Lista Funcao!</h1>
            <table class="table-striped">
                <tr bgcolor="#CCCCCC">
                    <td>Cod.</td>
                    <td>Funcao</td>               
                </tr>
                
                <% List<CdtrFuncao> lista = (List<CdtrFuncao>) request.getAttribute("lista") ; 
                for(CdtrFuncao list : lista){ %>
                <tr>
                    <td><%=list.getCafuPk()%> </td>
                    <td><%=list.getCafuDescricao()%> </td>
                </tr>
                <%}%>
                <a href="Funcao.do?acao=cadFuncao"><input type="button" value="Nova Funcao"></a>

        </table>        
    </body>
</html>
