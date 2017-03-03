

<%@page import="java.util.List"%>
<%@page import="br.com.Model.CdtrPessoa"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html" charset=UTF-8">
        
        <title>Lista de Usuarios</title>
    </head>
    <body>
       <jsp:include page="menu.jsp"/>
         <table border="1">

            <tr bgcolor="#CCCCCC">
               
                <td> ID </td>
                <td> NOME </td>
                <td> FUNÇÃO </td>               
                <td> LOGIN </td>
                <td> CURSO </td>
                <td> LATTES </td>   
                     
            </tr>
            
            <% List<CdtrPessoa> lista =(List<CdtrPessoa>) request.getAttribute("lista");
            for(CdtrPessoa list : lista){
            %>
           
            <tr>
                <td><%= list.getPessPk() %></td>
                <td><%= list.getPessNome()%></td>
                <td><%=list.getCafuDescricao() %></td>
                <td><%=list.getPessLogin()%> </td>
                <td><%=list.getCursoDescricao()%></td>
                <td><%=list.getPessLattes() %></td>
                <td><a href="Pessoa.do?acao=altPessoa&pessPk=<%= list.getPessPk()%> " > Alterar</a></td>
                  
            </tr>
            <% } %>
           
      
            
         </table>
         
         <a href="Pessoa.do?acao=cadPessoa"> <input type="button"  value="Novo Usuario "></a>  
    </body>
</html>

