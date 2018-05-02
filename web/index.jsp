<%@ page import="java.util.ArrayList" %>
<%@ page import="bean.Customer" %>
<%@ page import="java.util.List" %>
<%--
  Created by IntelliJ IDEA.
  User: minhtuan
  Date: 5/2/18
  Time: 10:44 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@    taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <meta charset="UTF-8">
    <title> List customer</title></head>
<body>
<%
    Customer customer1 = new Customer("tuan ","23/1/1994","ha noi","a1.png" );
    Customer customer2 = new Customer("linh","25/1/1993","ha noi","a2.jpeg" );
    Customer customer3 = new Customer("thanh","23/1/1996","ha noi","a3.jpeg" );
    List<Customer> list = new ArrayList<>();

    list.add(customer1);
    list.add(customer2);
    list.add(customer3);
    request.setAttribute("customer",list);
%>

<table border="1px">
    <tr>
        <td>Name</td>
        <td>Birthday</td>
        <td>Adress</td>
        <td>Image</td>
    </tr>

    <c:forEach var = "i" begin = "0" end = "${customer.size() - 1}">

    <tr>
        <td><c:out value="${customer[i].getFullname()}"/><p></td>
        <td><c:out value="${customer[i].getBirthday()}"/><p></td>
        <td><c:out value="${customer[i].getAdress()}"/><p></td>
        <%--<td><c:out value="${customer[i].getImage()}"/><p></td>--%>
        <td><img width="250px" height="200px"  src="../image/<c:out value ="${customer[i].getImage()}"/>"></td>
    </tr>
    </c:forEach>
</table>

</body>
</html>
