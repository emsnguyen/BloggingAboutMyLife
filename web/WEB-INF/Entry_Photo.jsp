<%-- 
    Document   : Entry_Photo
    Created on : Jul 9, 2018, 5:08:33 PM
    Author     : lenovo
--%>
<%@taglib  prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<div class="section">
    <div class="icon-photo"></div>
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
        <div class="content">
            <img src="${e.imagePath}" alt="${e.name}"/>
        </div>
    </div>
    <!--end of entry-->
</div>
<!--end of section-->

