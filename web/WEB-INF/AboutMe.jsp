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
        <title>About me Page</title>
        <link href="${pageContext.servletContext.contextPath}/css/Home.css" rel="stylesheet" type="text/css"/>
        <link href="${pageContext.servletContext.contextPath}/css/AboutMe.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <t:GenericPage>
            <jsp:attribute name="left_content">
                <div class="lblAboutMe">
                    ${e.name}
                </div>
                <div class="author-info">
                    <div class="author-info-details">
                        <p>
                            ${e.content}
                        </p>
                    </div>
                    <div class="author-signature">
                        <p>Kind regards</p>
                        <div class="hand-signature">
                            <img src="${pageContext.servletContext.contextPath}/${imgFolder}/${e.imagePath}"
                                 alt="signature"/>
                        </div>
                    </div>
                </div>
                <!--end of section-->
            </jsp:attribute>
        </t:GenericPage>
    </body>
</html>
