<%-- 
    Document   : Entry_Photo
    Created on : Jul 9, 2018, 5:08:33 PM
    Author     : lenovo
--%>
<%@taglib  prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div class="section">
    <div class="icon-photo"></div>
    <!--start of entry-->
    <div class="entry">
        <div class="controls">
            <span class="date">
                <fmt:formatDate value="${e.publishedDate}"
                                pattern="dd-MM-yyyy"/>
            </span>
        </div>
        <div class="title">
            <a href="${pageContext.servletContext.contextPath}/entrydetails?ID=${e.ID}">${e.name}</a>
        </div>
        <div class="content content-quotes">
            <p>${e.content}</p>
        </div>
    </div>
    <!--end of entry-->
</div>
<!--end of section-->