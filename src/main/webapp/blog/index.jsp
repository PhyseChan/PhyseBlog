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


<html>
<head>
    <!-- META DATA -->
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Home</title>

    <!-- Bootstrap Core CSS -->
    <link rel="stylesheet" href="/resources/css/bootstrap.min.css"  type="text/css">

    <!-- Owl Carousel Assets -->
    <link href="owl-carousel/owl.carousel.css" rel="stylesheet">
    <!-- <link href="owl-carousel/owl.theme.css" rel="stylesheet"> -->

    <!-- Custom CSS -->
    <link rel="stylesheet" href="/resources/css/style.css">

    <!-- Custom Fonts -->
    <link rel="stylesheet" href="/resources/lib/font-awesome-4.4.0/css/font-awesome.min.css"  type="text/css">
    <!---<link href='http://fonts.googleapis.com/css?family=Asap:400,700' rel='stylesheet' type='text/css'>--->

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="/resources/js/html5shiv.js"></script>
    <script src="/resources/js/respond.min.js"></script>
    <![endif]-->

</head>

<body class="index-page">

<!-- /////////////////////////////////////////Navigation -->
<nav class="navbar navbar-default navbar-fixed-top">
    <div class="container">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header page-scroll">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand page-scroll" href="index.html">Physe</a>
        </div>

        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav navbar-right">
                <li>
                    <a class="page-scroll" href="index.html">首页</a>
                </li>
                <li>
                    <a class="page-scroll" href="archive.html">博客</a>
                </li>
                <li>
                    <a class="page-scroll" href="single.html">关于</a>
                </li>
                <li>
                    <a class="page-scroll" href="contact.html">联系我</a>
                </li>
            </ul>
        </div>
        <!-- /.navbar-collapse -->
    </div>
    <!-- /.container-fluid -->
</nav>
<!-- Navigation -->
<div style="height: 400px"></div>


<header class="container">
    <div class="site-branding">
        <h1 class="site-title">
            <a href="index.html">
                <span>Physe</span>
            </a>
        </h1>
        <h2 class="site-description">BLOG</h2>
    </div>

</header>

<!-- /////////////////////////////////////////Content -->
<div id="page-content">

    <!-- ////////////Content Box 01 -->
    <section class="box-content box-1">
        <div class="container">
            <div class="row">
                <div class="col-md-1"></div>
                <div class="col-md-4">
                    <c:forEach items="${bloglist1}" var="blog1">
                    <div class="box-item">
                        <img src="${blog1.imageurl}" class="img-responsive"/>
                        <div class="content">
                            <h3>${blog1.title}</h3>
                            <p>${blog1.summary}</p>
                            <a href="/blog/getBlogByid?bid=${blog1.bid}">阅读</a>

                            <br><br>
                            <span>${blog1.publishtime}</span><br>
                        </div>
                    </div>
                    </c:forEach>

                </div>
                <div class="col-md-4 ">
                    <c:forEach items="${bloglist2}" var="blog2">
                        <div class="box-item">
                            <img src="${blog2.imageurl}" class="img-responsive"/>
                            <div class="content">
                                <h3>${blog2.title}</h3>
                                <p>${blog2.summary}</p>
                                <a href="/blog/getBlogByid?bid=${blog2.bid}">阅读</a>
                                <br><br>
                                <span>${blog2.publishtime}</span><br>
                            </div>
                        </div>
                    </c:forEach>
                </div>

                <div class="col-md-3">
                    <div class="box-item" style="">
                        <%--<img src="images/5.jpg" class="img-responsive"/>--%>
                        <div class="content">
                            <h3>Choosing The Bridesmaids and Groomsmen</h3>
                            <p>Suspendisse porttitor sapien ac lectus euismod imperdiet. Curabitur nec nibh at massa pellentesque accumsan eu id nibh. Donec accumsan ut mi.</p>
                            <a href="single.html">Read More...</a>
                            <br><br>
                            <span>MAY 21, 2014 BY VAFPRESS</span><br>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</div>

<!-- FOOTER -->
<footer>
    <div class="wrap-footer">
        <div class="container">
            <div class="row">
                <div class="col-footer col-md-7">
                    <h2 class="footer-title">关于我</h2>
                    <div class="textwidget">这是用来记录本人学习web开发的经验以及记录日常的博客网站。             Physe  2019.2.5</div>
                </div>
                <%--<div class="col-footer col-md-3 widget_recent_entries">
                </div>
                <div class="col-footer col-md-3">
                </div>--%>
                <div class="col-footer col-md-5">
                    <h2 class="footer-title">分类标签</h2>
                    <div class="footer-tags">

                        <c:forEach items="${categorylist}" var="category">
                            <a href="#">${category.typename}</a>
                        </c:forEach>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="bottom-footer">
        <div class="container">
            <div class="row">
                <div class="col-md-4">

                </div>
                <div class="col-md-4">

                </div>
                <div class="col-md-4">

                </div>
            </div>
        </div>
    </div>
</footer>

<!-- jQuery -->
<script type="text/javascript" src="/resources/js/jquery-3.3.1.js"></script>
<script type="text/javascript" src="/resources/js/bootstrap.min.js"></script>

<!-- Custom Theme JavaScript -->
<script src="/resources/js/agency.js"></script>

<!-- Plugin JavaScript -->
<script src="/resources/js/jquery.easing.min.js"></script>
<script src="/resources/js/classie.js"></script>
<script src="/resources/js/cbpAnimatedHeader.js"></script>

</body>
</html>