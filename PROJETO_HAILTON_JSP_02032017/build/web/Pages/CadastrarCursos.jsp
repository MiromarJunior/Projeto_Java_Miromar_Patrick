<%-- 
    Document   : CadastrarCurso
    Created on : 18/02/2017, 23:30:22
    Author     : miromar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cadastrar Curso</title>
    </head>
    <body>
         <jsp:include page="menu.jsp"/>
        <h1>Cadastro de Cursos!</h1>
        <form action="./Curso.do" method="post">
            <label>Descricao</label>
            <input type="text" name="curso" required="required" onkeyup= " this.value = this.value.toUpperCase();" />
            <input type="submit" value="Cadastrar"/>
        </form>
    </body>
</html>
