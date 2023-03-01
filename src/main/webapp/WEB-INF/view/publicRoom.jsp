<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<%--
  Created by IntelliJ IDEA.
  User: Pasha
  Date: 01.03.2023
  Time: 22:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<body>

<h1>Общее помещение</h1>
<br>
<br>

<security:authorize access="hasAnyRole('IT','SECURITY','DIRECTOR')">
    <input type="button" value="Серверная комната"
           onclick="window.location.href = 'server_info'">
    Доступ: IT-сотрудники, охрана, директор
</security:authorize>

<br>
<br>

<security:authorize access="hasAnyRole('SECURITY','DIRECTOR')">
    <input type="button" value="Комната охраны"
           onclick="window.location.href = 'security_info'">
    Доступ: охрана, директор
</security:authorize>

<br>
<br>

<security:authorize access="hasRole('DIRECTOR')">
    <input type="button" value="Кабинет директора"
           onclick="window.location.href = 'director_info'">
    Доступ: директор
</security:authorize>

</body>

</html>