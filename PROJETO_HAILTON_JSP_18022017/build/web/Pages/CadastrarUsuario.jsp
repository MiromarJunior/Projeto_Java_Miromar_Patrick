<%-- 
    Document   : CadastrarUsuario
    Created on : 05/02/2017, 11:42:27
    Author     : miromar
--%>

<%@page import="br.com.Model.CdtrPessoa"%>
<%@page import="java.util.List"%>
<%@page import="br.com.DAO.CdtrPessoaDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <link rel="stylesheet" href="css/bootstrap.css" type="text/css"/>
         <link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">
         <script src="js/jquery-3.1.1.min.js" type="text/javascript"></script>
         <script src="js/bootstrap.min.js" type="text/javascript"></script>
        <title>Cadastrar Usuario</title>
    </head>
    <body>
        
           <jsp:include page="menu.jsp"/>
           <form action="./Pessoa.do" method="post">
             <label>Nome</label>
            <input type="text" name="nomePessoa" required="required" onkeyup= " this.value = this.value.toUpperCase();"/><br>
           <a href="Pessoa.do?acao=buscar">buscar</a>
                    </form>
               
          
           

        <form action="./Pessoa.do" method="post">

            <label>Nome</label>
            <input type="text" name="nomePessoa" required="required" onkeyup= " this.value = this.value.toUpperCase();"/><br>
            <label>Login</label>
            <input type="text" name="loginPessoa" required="required" onkeyup= " this.value = this.value.toUpperCase();" /><br>
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
