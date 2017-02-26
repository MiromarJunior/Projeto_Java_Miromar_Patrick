<%-- 
    Document   : CadastrarUsuario
    Created on : 05/02/2017, 11:42:27
    Author     : miromar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
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
                <c:forEach items="${requestScope.listaFuncao}" var="listaFuncao" >
                    <option value="${listaFuncao.cafuPk}" >${listaFuncao.cafuDescricao} </option>
                </c:forEach>   
            </select><br>
             <label>Curso</label>
            <select name = "idCurso">
                <c:forEach items="${requestScope.listaCurso}" var="listaCurso" >
                    <option value="${listaCurso.cursPk}" >${listaCurso.cursDescricao} </option>
                </c:forEach> 
            </select><br>
            <label>Lattes</label>
            <input type="text" name="lattesPessoa"/><br>

            <input type="submit" value="Cadastrar"/>
        </form>
    </body>
</html>


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

