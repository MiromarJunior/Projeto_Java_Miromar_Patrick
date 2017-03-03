<%-- 
    Document   : AlterarUsuario
    Created on : 01/03/2017, 23:53:06
    Author     : miromar
--%>

<%@page import="br.com.Model.CdtrPessoa"%>
<%@page import="br.com.Model.CdtrCurso"%>
<%@page import="br.com.Model.CdtrCurso"%>
<%@page import="br.com.Model.CdtrFuncao"%>
<%@page import="java.util.List"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <jsp:include page="menu.jsp"/>


        <form action="Pessoa.do" method="post">
            <fieldset id="fieldsetCad">
                <% CdtrPessoa pessoa = (CdtrPessoa) request.getAttribute("cdtrPessoa");%>
                <table>
                     <tr >
                        <td >
                            
                            <label>ID</label>
                            <input type="text" name="pessoaPk" readonly="readonly" value="<%=pessoa.getPessPk() %>" />
                        </td>    
                      
                    </tr>
                    <tr >
                        <td >
                            
                            <label>Nome</label>
                            <input type="text" name="nomePessoa" value="<%=pessoa.getPessNome() %>" required="required" onkeyup= " this.value = this.value.toUpperCase();"/>
                        </td>    
                      
                    </tr>
                    <tr>
                        <td>
                             
                             <label>Login</label>
                            <input type="text" name="loginPessoa" value="<%=pessoa.getPessLogin() %>" required="required" onkeyup= " this.value = this.value.toUpperCase();"/>
                         </td>
                    </tr>
                    
                    <tr>
                        <td>
                            <label>Lattes</label>
                            <input type="text" name="lattesPessoa"value="<%=pessoa.getPessLattes() %>"/>
                        </td>
                    </tr>
                    
                     <tr>
                        <td>
                            <label>Senha</label>
                            <input type="password" name="senhaPessoa" value="<%=pessoa.getPessSenha() %>" required="required" onkeyup= " this.value = this.value.toUpperCase();"/>
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
                            <input type="submit" value="Alterar"/>
                            
                            
                        </td>
                    </tr>
                </table>    


            </fieldset>
        </form>
    </body>
</html>
