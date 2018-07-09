<%-- 
    Document   : GenericPage
    Created on : Jul 6, 2018, 8:16:15 AM
    Author     : lenovo
--%>

<%@tag description="put the tag description here" pageEncoding="UTF-8"%>
<link href="${pageContext.servletContext.contextPath}/css/GenericPage.css" rel="stylesheet" type="text/css"/>
<%@taglib prefix="t" tagdir="/WEB-INF/tags/" %>
<%@attribute name="label" fragment="true" %>
<%@attribute name="left_content" fragment="true" %>
<div class="wrapper">
    <t:Header></t:Header>
        <div class="main-content">
            <div class="left">
            <jsp:invoke fragment="left_content"/>
        </div>
        <!--end of left-->
        <div class="right">
            <div class="wrapper-sharebox">
                <p class="lblShare">Share this page</p>
                <table>
                    <tr>
                        <td>    
                            <i class="icon-fb"></i>
                        </td>
                        <td>
                            <a href="#">Share on Facebook</a>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <i class="icon-twitter"></i>
                        </td>
                        <td>
                            <a href="#">Share on Twitter</a>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <i class="icon-gg"></i>
                        </td>
                        <td>
                            <a href="#">Share on Google+</a>
                        </td>
                    </tr>
                </table>
            </div>
            <div class="create-website-box">
                <p class="lblWebsite">Create a website</p>
                <p>Everybody can create a website, it's easy</p>
                <div>
                    <a href="#" class="btn-try">Try it for FREE now</a>
                </div>
            </div>
        </div>
        <!--end of right-->
    </div>
    <!--end of main content-->
    <hr> 
    <div class="footer">
        <div class="footer-info">
            <p>This website was created with SimpleSite</p>
            <p>
                <a href="#">Get your own FREE website. Click here!</a>
            </p>
        </div>
        <div class="page-counter">
            <span class="counter-item">0</span>
            <span class="counter-item">1</span>
            <span class="counter-item">2</span>
            <span class="counter-item">3</span>
            <span class="counter-item">0</span>
            <span class="counter-item">5</span>
        </div>
    </div>
</div>