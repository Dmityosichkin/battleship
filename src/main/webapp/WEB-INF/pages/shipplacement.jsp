<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: dima
  Date: 15.11.2018
  Time: 19:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Shipplacement </title>
</head>
<body>

<label>Start game!</label>
${errorHolder.message}
<form method="post" action="shipplacement">
<table>
    <tr>
        <td>&nbsp;</td>
    <c:forEach items="A,B,C,D,E,F,G,H,I,J" var="col">
        <td>${col} </td>
    </c:forEach>
    </tr>
    <c:forEach begin="1" end="10" var="row">
        <tr>
            <td>${row}</td>
            <c:forEach items="A,B,C,D,E,F,G,H,I,J" var="col">
                <td>
                    <c:set var="addr" value="${col}${row}"/>
                    <input
                            type="checkbox"
                            name="cell"
                            value="${col}${row}"
                    <c:if test="${tempShipsHolder.ships[addr]}">checked</c:if>
                    >
                </td>
            </c:forEach>
        </tr>
    </c:forEach>
</table>
    <button type="submit">I'm ready</button>
</form>


</body>
</html>
