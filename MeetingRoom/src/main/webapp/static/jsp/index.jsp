<%--
  Created by IntelliJ IDEA.
  User: 86182
  Date: 2020/10/2
  Time: 8:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<script type="text/javascript" src="/static/js/jquery-1.12.4.js"></script>
<body>
<table border="1px" width="500px" align="center">
<tr>
    <td colspan="8"><h2 align="center">会议室信息表</h2></td>
</tr>
<tr id="a">
    <td>预定编号</td>
    <td>会议室</td>
    <td>预订人</td>
    <td>日期</td>
</tr>
<c:forEach items="${list}" var="meet">
    <tr>
        <td>${meet.id}</td>
        <td>${meet.meetingName}</td>
        <td>${meet.advanceName}</td>
        <td>${meet.meetingOrder}</td>
    </tr>
</c:forEach>
<p style="margin-left: 485px"><a href="/toadd">预定会议室</a></p>
</table>
</body>
</html>
<script type="text/javascript">
    $("tr:even").css("background-color","rgb(200,154,2)");
    $("#a").css("background-color","rgb(153,153,153)");
</script>
