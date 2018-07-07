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
        <title>Overview Page</title>
        <link href="${pageContext.servletContext.contextPath}/css/Home.css" rel="stylesheet" type="text/css"/>
        <link href="${pageContext.servletContext.contextPath}/css/Overview.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <t:GenericPage>
            <jsp:attribute name="left_content">
                <div class="lblMyBlog">
                    Overview - My Blog
                </div>
                <div class="content">
                    <c:forEach items="${map}" var="entry">
                        <table class="entry-table">
                            <thead>
                                <tr>
                                    <th class="month-year" colspan="3">${entry.key}</th>
                                    <th id="date" class="align-right">Date</th>
                                </tr>
                            </thead>
                            <tbody>
                                <c:forEach items="${entry.value}" var="item">
                                    <tr>
                                        <td>
                                            <a href="${pageContext.servletContext.contextPath}/entrydetails?ID=${item.ID}">${item.name}!</a>
                                        </td>
                                        <td>
                                            <i class="icon-thumbs-up"></i>
                                            <span class="likes">0</span>
                                        </td>
                                        <td>
                                            <i class="icon-comment"></i>
                                            <span class="comments">0</span>
                                        </td>
                                        <td class="align-right">
                                            <fmt:formatDate value="${item.publishedDate}"
                                                            pattern="dd-MM-yyyy"/>
                                        </td>
                                    </tr>
                                </c:forEach>
                            </tbody>
                        </table>
                    </c:forEach>
                <div class="paging">${paging}</div>
                </div>
            </jsp:attribute>
        </t:GenericPage>
    </body>
</html>
