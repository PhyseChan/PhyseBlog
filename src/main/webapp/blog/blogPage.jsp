<%--
Created by IntelliJ IDEA.
User: qibinliang
Date: 2019-02-01
Time: 16:17
To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page isELIgnored="false" %>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>博文列表</title>

    <link rel="stylesheet" href="/resources/css/bootstrap.css" type="text/css">
    <link rel="stylesheet" href="/resources/css/bootstrap-grid.css" type="text/css">
    <link rel="stylesheet" href="/resources/css/bootstrap-reboot.css" type="text/css">
    <link rel="stylesheet" href="/resources/css/core.css" type="text/css">
    <link rel="stylesheet" href="/resources/css/font-awesome.min.css">
    <link rel="stylesheet" href="/resources/css/font.css" type="text/css">

    <script type="text/javascript" src="/resources/js/jquery-3.3.1.js"></script>
    <script type="text/javascript" src="/resources/js/bootstrap.js"></script>
    <script type="text/javascript" src="/resources/js/bootstrap.bundle.js"></script>
    <script type="text/javascript" src="/resources/js/core.js"></script>
    <script type="text/javascript" src="/resources/garand-sticky/jquerysticky.js"></script>
    <link href="/resources/buttonAction/css/demo-page.css" rel="stylesheet" media="all">
    <link href="/resources/buttonAction/css/hover.css" rel="stylesheet" media="all">


</head>


<body>
<script>
    $(document).ready(function(){
        $("#sticker").sticky({topSpacing:0});
    });
</script>


<section class="sec-wrapper">

    <section class="main-section">
        <div class="div-wrapper clearfix">
            <div class="cont-left">

                <c:forEach  items="${bloglist}"  var="blogd" >

                    <div class="cont-item two_s">
                        <div>
                            <div class="title_and_summary">
                                <div>${blogd.title}</div>
                                <div >
                                    <div class="summaryandimg">
                                        <img src="${blogd.imageurl}" style="width:160px;height:90px; margin-top: 20px">
                                    </div>
                                    <div class="summary-style">${blogd.summary}</div>
                                </div>
                            </div>

                            <div class="detail_button">
                                <a href="/blog/index" class="hvr-border-fade">阅读</a>
                            </div>
                        </div>
                        <nav >${blogd.publishtime}</nav>
                    </div>
                </c:forEach>


            </div>
            <div class="list-right">
                <div class="box-fixed "><div><a href="/blog/index">主页</a></div><div><a href="/blog/index">主页</a></div><div><a href="/blog/index">主页</a></div></div>
            </div>
        </div>
    </section>
</section>

<footer class="foot">
</footer>



</body>
</html>