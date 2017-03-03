<%-- 
    Document   : CadastrarUsuario
    Created on : 05/02/2017, 11:42:27
    Author     : miromar
--%>

<%@page import="br.com.Model.CdtrCurso"%>
<%@page import="java.util.List"%>
<%@page import="br.com.Model.CdtrFuncao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cadastrar Usuario</title>
    </head>
    <body>
        
        <jsp:include page="menu.jsp"/>


        <form action="./Pessoa.do" method="post">

            <label>Nome</label>
            <input type="text" name="nomePessoa" required="required"/><br>
            <label>Login</label>
            <input type="text" name="loginPessoa" required="required"/><br>
            <label>SENHA</label>
            <input type="password" name="senhaPessoa" required="required"/><br>
           
            <label>Função</label>
             <select name = "idFuncao">
                 <%List<CdtrFuncao> listaFuncao =(List<CdtrFuncao>) request.getAttribute("listaFuncao");
            for(CdtrFuncao list : listaFuncao){
            
            %>
           
            <option value="<%=list.getCafuPk()%>" > <%= list.getCafuDescricao()%> </option>
                    <%}%>  
                    
             </select>
             <label>Curso</label>
            <select name = "idCurso">
                <% List<CdtrCurso> listaCurso = (List<CdtrCurso>) request.getAttribute("listaCurso"); 
                for(CdtrCurso list : listaCurso){
                %>
                 
                <option value="<%= list.getCursPk()%>" ><%=list.getCursDescricao()%></option>
                  <% }%>
            </select><br>
            <label>Lattes</label>
            <input type="text" name="lattesPessoa"/><br>

            <input type="submit" value="Cadastrar"/>
        </form>
    </body>
</html>
<%-- 
    Document   : CadastrarUsuario
    Created on : 05/02/2017, 11:42:27
    Author     : miromar

<div class="row">
                <div class="form-group col-md-2">
                    <label >Nome</label>
                    <input type="text" class="form-control" name="nomePessoa" required="required" onkeyup= " this.value = this.value.toUpperCase();"/>
                </div>
            </div><br>
            
             <div class="row">
                <div class="form-group col-md-2">
                    <label >Login</label>
                    <input type="text" class="form-control" name="loginPessoa" required="required" onkeyup= " this.value = this.value.toUpperCase();"/>
                </div>
            </div><br>
            
            <div class="row">
                <div class="form-group col-md-2">
            <label>SENHA</label>
            <input type="password" class="form-control" name="senhaPessoa" required="required"/><br>
            </div>
            </div><br>
            
            
            
            <div class="row">
                <div class="form-group col-md-2">
            <label>Função</label>
            <select name = "idFuncao">
                  
            </select><br>
             </div>
            </div><br>
             <label>Curso</label>
            <select name = "idCurso">
               
            </select><br>
            <label>Lattes</label>
            <input type="text" name="lattesPessoa"/><br>
            <input type="submit" value="Cadastrar"/>
                    </form>
        

    </body>
</html>





--%>

 