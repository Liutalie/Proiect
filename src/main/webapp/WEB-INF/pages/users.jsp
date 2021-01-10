<%-- 
    Document   : users
    Created on : Jan 8, 2021, 1:58:32 PM
    Author     : Stefan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>

<t:pageTemplate pageTitle="Users">
    <h1> User </h1>
    <c:if test="${pageContext.request.isUserInRole('AdminRole')}">
        <a class="btn btn-primary btn-lg" href="${pageContext.request.contextPath}/Users/Create" role="button">Add User</a>
    </c:if>
    <c:forEach var="user" items="${users}" varStatus="status">
        <div class="row">
            <div class="col-md-4">  
                ${user.username}
            </div>
            <div class="col-md-4">
                ${user.email}
            </div>
            <div class="col-md-4">
                ${user.position}
            </div>
        </div>
    </c:forEach>
</t:pageTemplate>
