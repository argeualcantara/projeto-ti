<%@ taglib uri="/tags/struts-bean" prefix="bean"%>
<%@ taglib uri="/tags/struts-html" prefix="html"%>
<%@ taglib uri="/tags/struts-logic" prefix="logic"%>
<%@taglib prefix="c" uri="/WEB-INF/c.tld"%>
<%@page isELIgnored="false"%>
<html>
<head>
<link rel="shortcut icon" href="images/favicon.png" type="image/png" />
<LINK rel="stylesheet" href="css/estilo.css" type="text/css">
<style type="text/css">
.tableAlign {
	vertical-align: middle;
}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Mercado Livre 2.0</title>
</head>
<body class="bgStyle">
<html:form action="VendedorLogin.do?method=logar">
	<a href="http://localhost:8080/Trabalho_TI/Index.do">In�cio</a>
	<table align="right" cellpadding="2">
		<c:if test="${sessionScope.login == null || sessionScope.login == ''}">
			<c:redirect url="/Index.do"></c:redirect>
		</c:if>
		<c:if test="${sessionScope.login != null}">

			<tr>
				<td>Voc� est� logado como</td>
				<td>${login}</td>
			</tr>
			<tr>
				<td colspan="2">
				<div align="left"><a onclick=""
					href="http://localhost:8080/Trabalho_TI/pages/produtos.jsp">Produtos</a>
				<a onclick="" href="VendedorLogin.do?method=deslogar">Sair</a></div>
				</td>
			</tr>
		</c:if>
	</table>
</html:form>
<div style="padding-top: 200px;">
<center><html:form action="Produtos.do?method=inserir">
	<table align="center" cellpadding="2">
		<tr>
			<td>Produto cadastrado por</td>
			<td>${sessionScope.login}</td>
		</tr>
		<tr>
			<td>Nome:</td>
			<td><html:text styleId="nome" property="nome"></html:text></td>
		</tr>
		<tr>
			<td>Descricao:</td>
			<td><html:textarea property="descricao" cols="20"></html:textarea>
			</td>
		</tr>
		<tr>
			<td>Valor Unit�rio:</td>
			<td><html:text styleId="valor" property="valor_unitario"></html:text>
			</td>
		</tr>
		<tr>
			<td>�rea:</td>
			<td><html:select property="cod_area">
				<c:forEach var="area" items="${listaArea}">
					<html:option value="${area.id_area}">${area.descricao}</html:option>
				</c:forEach>
			</html:select></td>
		</tr>
		<tr>
			<td colspan="2">
			<div align="right"><html:submit styleId="botao"
				value="Cadastrar" /></div>
			</td>
		</tr>
	</table>
</html:form></center>
</div>

</body>
</html>