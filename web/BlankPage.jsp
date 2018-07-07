<%-- 
    Document   : Home
    Created on : Jul 1, 2018, 12:29:56 AM
    Author     : lenovo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags/"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Blank Page</title>
        <link href="${pageContext.servletContext.contextPath}/css/Home.css" rel="stylesheet" type="text/css"/>
        <link href="${pageContext.servletContext.contextPath}/css/Overview.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <t:GenericPage>
            <jsp:attribute name="left_content">
            </jsp:attribute>
        </t:GenericPage>
    </body>
</html>
