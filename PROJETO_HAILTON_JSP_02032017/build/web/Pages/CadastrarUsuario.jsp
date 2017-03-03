<%-- 
    Document   : CadastrarUsuario
    Created on : 05/02/2017, 11:42:27
    Author     : miromar
--%>

<%@page import="br.com.Model.CdtrCurso"%>
<%@page import="br.com.Model.CdtrFuncao"%>
<%@page import="br.com.Model.CdtrPessoa"%>
<%@page import="java.util.List"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/cssGeral.css" rel="stylesheet" type="text/css">
        <title>Cadastrar Usuario</title>
    </head>
    <body>

        <jsp:include page="menu.jsp"/>


        <form action="./Pessoa.do" method="post">
            <fieldset id="fieldsetCad">
                <table>
                    <tr >
                        <td >
                            
                            <label>Nome</label>
                            <input type="text" name="nomePessoa" required="required" onkeyup= " this.value = this.value.toUpperCase();"/>
                        </td>    
                      
                    </tr>
                    <tr>
                        <td>
                             
                             <label>Login</label>
                            <input type="text" name="loginPessoa" required="required" onkeyup= " this.value = this.value.toUpperCase();"/>
                         </td>
                    </tr>
                    
                    <tr>
                        <td>
                            <label>Lattes</label>
                            <input type="text" name="lattesPessoa"/>
                        </td>
                    </tr>
                    
                     <tr>
                        <td>
                            <label>Senha</label>
                            <input type="password" name="senhaPessoa" required="required" onkeyup= " this.value = this.value.toUpperCase();"/>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <label>Função</label>
                            <select name = "idFuncao">
                                <% List<CdtrFuncao> listaFuncao = (List<CdtrFuncao>) request.getAttribute("listaFuncao");
                                for (CdtrFuncao list : listaFuncao) {%>
                                <option value="<%=list.getCafuPk()%>" > <%= list.getCafuDescricao()%> </option>
                                <%}%>  
                            </select>
                          
                          
                        </td>
                    </tr>
                     <tr >
                        <td>
                                <label>Curso</label>
                                <select name = "idCurso">
                                <% List<CdtrCurso> listaCurso = (List<CdtrCurso>) request.getAttribute("listaCurso");
                                for (CdtrCurso list : listaCurso) {%>
                                <option value="<%= list.getCursPk()%>" ><%=list.getCursDescricao()%></option>
                                <% }%>
                            </select>
                            
                            
                        </td>
                    </tr>
                    
                    
                    
                     <tr>
                        <td>
                            <input type="submit" value="Cadastrar"/>
                            
                            
                        </td>
                    </tr>
                </table>    


            </fieldset>
        </form>
    </body>
</html>
