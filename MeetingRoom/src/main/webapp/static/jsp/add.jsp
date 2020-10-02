<%--
  Created by IntelliJ IDEA.
  User: 86182
  Date: 2020/10/2
  Time: 8:31
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
<form action="/add" method="post">
    <table border="1px" align="center" width="500px">
        <tr id="b">
            <td colspan="8" align="center">会议室预定</td>
        </tr>
        <tr>
            <td>会议室：</td>
            <td>
                <select name="meetingName">
                    <option value="一号会议室">一号会议室</option>
                    <option value="二号会议室">二号会议室</option>
                    <option value="三号会议室">三号会议室</option>
                </select>
            </td>
        </tr>
        <tr>
            <td>申请人：</td>
            <td><input type="text" name="advanceName"></td>
        </tr>
        <tr>
            <td>预定日期：</td>
            <td><input type="text" name="meetingOrder"/>日期格式：yyyy-MM-dd</td>
        </tr>
        <tr>
            <td>
                <input type="submit" value="提交">
                <input type="reset" value="重置">
            </td>
        </tr>
    </table>
</form>
</body>
</html>
<script type="text/javascript">
    $("#b").css("background-color","rgb(153,153,153)");
</script>
