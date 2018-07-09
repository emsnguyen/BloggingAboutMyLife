<%-- 
    Document   : Home
    Created on : Jul 1, 2018, 12:29:56 AM
    Author     : lenovo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags/"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home Page</title>
        <link href="${pageContext.servletContext.contextPath}/css/Home.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>

        <t:GenericPage>
            <jsp:attribute name="left_content">
                <div class="lblMyBlog">
                    My Blog
                </div>
                <c:forEach items="${entries}" var="e">
                    <c:choose>
                        <c:when test="${e.categoryID eq 1}">
                            <%@include file="Entry_Quotes.jsp" %>
                        </c:when>
                        <c:when test="${e.categoryID eq 2}">
                            <%@include file="Entry_Photo.jsp" %>
                        </c:when>
                        <c:otherwise>
                            <%@include file="Entry_Others.jsp" %>
                        </c:otherwise>
                    </c:choose>
                </c:forEach>

                <div class="left-bottom">
                    <a href="${pageContext.servletContext.contextPath}/overview" class="overview">Overview</a>
                </div>
            </jsp:attribute>
        </t:GenericPage>
    </body>
</html>
