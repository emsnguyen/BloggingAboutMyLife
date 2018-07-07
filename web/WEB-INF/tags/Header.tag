<%-- 
    Document   : header
    Created on : Jul 6, 2018, 8:09:21 AM
    Author     : lenovo
--%>

<%@tag description="put the tag description here" pageEncoding="UTF-8"%>

<%-- The list of normal or fragment attributes can be specified here: --%>
<%@attribute name="message"%>
<link href="${pageContext.servletContext.contextPath }/css/Header.css" rel="stylesheet" type="text/css"/>
<div class="header">
    <div class="title-wrapper">
        <a class="title-link" href="#">Blogging About My Life</a>
        <p class="subtitle">Welcome to my blog</p>
    </div>
    <div class="navbar">
        <a href="${pageContext.servletContext.contextPath}/home" class="navbar-home">My Blog</a>
        <a href="${pageContext.servletContext.contextPath}/aboutme" class="navbar-about-me">About Me</a>
    </div>
</div>