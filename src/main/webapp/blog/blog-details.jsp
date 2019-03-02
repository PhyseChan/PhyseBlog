<%--
  Created by IntelliJ IDEA.
  User: qibinliang
  Date: 2019/2/7
  Time: 12:27 AM
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

    <title></title>

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

<body class="sub-page">
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
                    <a class="page-scroll" href="#">博客</a>
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

<!-- Background Gradients-->
<div  class="site-gradients">
    <div class="site-gradients-media">
        <figure>
            <img src="Another%20Yosemite%20short%20movie%20project%20%E2%80%93%20Modern_files/PcLGXNjMTdiFVKTrElCl__DSC2245.jpg" alt="PcLGXNjMTdiFVKTrElCl__DSC2245" srcset="https://themedemos.webmandesign.eu/modern/wp-content/uploads/sites/8/2014/11/PcLGXNjMTdiFVKTrElCl__DSC2245.jpg 1920w, https://themedemos.webmandesign.eu/modern/wp-content/uploads/sites/8/2014/11/PcLGXNjMTdiFVKTrElCl__DSC2245-420x280.jpg 420w, https://themedemos.webmandesign.eu/modern/wp-content/uploads/sites/8/2014/11/PcLGXNjMTdiFVKTrElCl__DSC2245-744x497.jpg 744w, https://themedemos.webmandesign.eu/modern/wp-content/uploads/sites/8/2014/11/PcLGXNjMTdiFVKTrElCl__DSC2245-1200x801.jpg 1200w" sizes="(max-width: 1617px) 100vw, 1617px" height="1080" width="1617">
        </figure>
    </div>
</div>

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
<div id="page-content" class="single-page">
    <div class="container">
        <div class="row">
            <div id="main-content">
                <article>
                   <center><img src="${blog.imageurl}" /></center>
                    <div class="art-content">
                        <h1 style="text-align: center">${blog.title}</h1>
                        <div class="info"style="text-align: center"><p>发布于 ${blog.publishtime}</p><p style="color: #2aabd2"><c:forEach items="${blog.categorylist}" var="categoryitem">
                             ${categoryitem.typename}
                        </c:forEach></p></div>
                        <br>
                        <br>

                        <br>
                        <br>
                        ${blog.context}
                    </div>
                    <p style="text-align: center ;font-weight: bold;"><a style="color: #0aac8e;" href="/blog/index">首页</a></p>
                    <br>

                    <br>
                </article>

            </div>
        </div>
    </div>

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
                            <a href="/blog/category?typename=${category.typename}">${category.typename}</a>
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