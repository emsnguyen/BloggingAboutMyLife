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
        <title>Entry Details Page</title>
        <link href="${pageContext.servletContext.contextPath}/css/Home.css" rel="stylesheet" type="text/css"/>
        <link href="${pageContext.servletContext.contextPath}/css/EntryDetails.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <t:GenericPage>
            <jsp:attribute name="left_content">
                    <!--start of section -->
                    <div class="section">
                        <!--icon-->
                        <c:choose>
                            <c:when test="${e.categoryID eq 1}">
                                <div class="icon-quotes"></div>
                            </c:when>
                            <c:when test="${e.categoryID eq 2}">
                                <div class="icon-photo"></div>
                            </c:when>
                            <c:otherwise>
                                <div class="icon-pencil"></div>
                            </c:otherwise>
                        </c:choose>
                        <!--end of icon-->
                        <!--start of entry-->
                        <div class="entry">
                            <div class="controls">
                                <span class="date">
                                    <fmt:formatDate value="${e.publishedDate}"
                                                    pattern="dd-MM-yyyy"/>
                                </span>
                            </div>
                            <div class="title">
                                <p>${e.name}</p>
                            </div>
                            <div class="content">
                                ${e.content}
                            </div>
                        </div>
                        <!--end of entry-->
                    </div>
                    <!--end of section-->
                <div class="left-bottom">
                    <a href="${pageContext.servletContext.contextPath}/overview" class="overview">Overview</a>
                </div>
            </jsp:attribute>
        </t:GenericPage>
    </body>
</html>