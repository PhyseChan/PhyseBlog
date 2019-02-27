<%--
  Created by IntelliJ IDEA.
  User: keyburn1995
  Date: 2019/2/6
  Time: 9:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>

<!DOCTYPE HTML>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
    <meta charset="utf-8">

    <!-- Description, Keywords and Author -->

    <meta name="description" content="">
    <meta name="author" content="">
    <title>『 Physe Blog 』</title>
    <link rel="shortcut icon" href="/resources/images/favicon2.ico" type="image/x-icon">

    <!-- style -->

    <link href="/resources/css/style.css" rel="stylesheet" type="text/css">

    <!-- style -->

    <!-- bootstrap -->

    <link href="/resources/css/bootstrap.min.css" rel="stylesheet" type="text/css">

    <!-- responsive -->

    <link href="/resources/css/responsive.css" rel="stylesheet" type="text/css">

    <!-- font-awesome -->

    <link rel="stylesheet" type="text/css" href="http://www.jq22.com/jquery/font-awesome.4.6.0.css">

    <!-- font-awesome -->

    <link href="/resources/css/effects/set2.css" rel="stylesheet" type="text/css">
    <link href="/resources/css/effects/normalize.css" rel="stylesheet" type="text/css">
    <link href="/resources/css/effects/component.css"  rel="stylesheet" type="text/css" >
    <link href="/resources/css/common.css"  rel="stylesheet" type="text/css" >
    <link href="/resources/css/jdc-side-panel.css"  rel="stylesheet" type="text/css" >
</head>



<body>



<!-- header -->

<header role="header">

    <div class="container">

        <!-- logo -->

        <h1>

            <a href="index.html" title="avana LLC"><img src="/resources/images/favicon-large.png" title="avana LLC" alt="avana LLC"/></a>

        </h1>

        <!-- logo -->

        <!-- nav -->

        <nav role="header-nav" class="navy">
            <ul>
                <li class="nav-active"><a href="/blog/index" title="Work">首页</a></li>
                <li><a href="about.html" title="About">关于</a></li>
                <li><a href="/blog/category?cid=1" title="web development">web开发</a></li>
                <li><a href="/blog/category?cid=2" title="computer science">408综合</a></li>
                <li><a href="/blog/category?cid=3" title="higher mathematics & linear algebra">高数 & 线代</a></li>

            </ul>
        </nav>

        <!-- nav -->

    </div>

</header>

<!-- header -->

<!-- main -->

<main role="main-home-wrapper" class="container">



    <div class="row">

        <div class="clearfix"></div>
        <section class="col-sm-2 col-md-2 col-lg-2 grid"> </section>
        <section class="col-xs-12 col-sm-4 col-md-4 col-lg-4 grid">
            <ul class="grid-lod effect-2" id="grid">
                <c:forEach items="${bloglist1}" var="blog1">
                    <li>
                        <figure class="effect-oscar"> <img src="${blog1.imageurl}" alt="" class="img-responsive"/>
                            <figcaption>
                                <h4>${blog1.title} </h4>

                                <p>${blog1.summary}</p>
                                <h5><span>${blog1.publishtime}</span></h5>
                                <a href="/blog/getBlogByid?bid=${blog1.bid}">View more</a> </figcaption>
                        </figure>
                    </li>
                </c:forEach>

            </ul>
        </section>


        <section class="col-xs-12 col-sm-4 col-md-4 col-lg-4 grid">
            <ul class="grid-lod effect-2" id="grid">
                <c:forEach items="${bloglist2}" var="blog2">
                    <li>
                        <figure class="effect-oscar"> <img src="${blog2.imageurl}" alt="" class="img-responsive"/>
                            <figcaption>
                                <h4>${blog2.title} </h4>

                                <p>${blog2.summary}</p>
                                <h5><span>${blog2.publishtime}</span></h5>
                                <a href="/blog/getBlogByid?bid=${blog2.bid}">View more</a> </figcaption>
                        </figure>
                    </li>
                </c:forEach>
            </ul>
        </section>

        <section class="col-sm-2 col-md-2 col-lg-2 grid"> </section>

        <div class="clearfix"></div>

    </div>
    <div class="jdc-side" style="display: block;">
        <div class="mod_hang_appeal">

            <div class="mod_hang_appeal_btn"><i class="jdcfont">&#xe699</i> <span>快速跳转</span></div>
            <div class="mod_hang_appeal_show">
                <ul>
                    <li><a href="#" target="_blank">
                        <div class="icon_box"><i class="jdcfont"></i></div>
                        <div class="text_box">
                            <h5>function 1</h5>
                            <p>function 1</p>
                        </div>
                    </a></li>
                    <li id="entry"><a href="#" target="_blank" class="f-cb">
                        <div class="icon_box"><i class="jdcfont"></i></div>
                        <div class="text_box">
                            <h5>function 2</h5>
                            <p>function 2</p>
                        </div>
                    </a></li>
                </ul>
            </div>
        </div>
        <div class="mod_hang_qrcode jdc_hang_qrcode"><a class="mod_hang_qrcode_btn"><i class="jdcfont">&#xe6a9</i><span>扫码关注</span></a>
            <div class="mod_hang_qrcode_show">
                <div class="mod_hang_qrcode_show_bg"></div>
                <p>博主微信号</p>
            </div>
        </div>
        <div class="mod_hang_qrcode mod_hang_top"><a href="#" class="mod_hang_qrcode_btn"><i class="jdcfont">&#xe69e</i><span>返回顶部</span></a></div>
        <div class="el-dialog__wrapper" style="display: none;">
            <div class="el-dialog el-dialog--small" style="top: 15%;">
                <div class="el-dialog__header"><span class="el-dialog__title"></span>
                    <div type="button" class="el-dialog__headerbtn"><i class="el-dialog__close el-icon el-icon-close">12313213</i></div>
                </div>
            </div>
        </div>
    </div>
</main>

<!-- main -->

<!-- footer -->

<footer role="footer">

    <!-- logo -->

    <h1>

        <a href="index.html" title="Physe Blog"><img src="/resources/images/favicon2.ico" title="Physe" alt="Physe"/></a>

    </h1>

    <!-- logo -->

    <!-- nav -->

    <nav role="footer-nav">
        <ul>
            <li><a href="/blog/index" title="Work">首页</a></li>
            <li><a href="about.html" title="About">关于</a></li>
            <li><a href="/blog/index" title="Blog">Blog</a></li>
        </ul>
    </nav>

    <!-- nav -->



    <p class="copy-right">physe</p>

</footer>

<!-- footer -->



<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->

<script src="/resources/js/jquery.min.js" type="text/javascript"></script>

<!-- custom -->

<script src="/resources/js/nav.js" type="text/javascript"></script>

<script src="/resources/js/custom.js" type="text/javascript"></script>

<!-- Include all compiled plugins (below), or include individual files as needed -->

<script src="/resources/js/bootstrap.min.js" type="text/javascript"></script>

<script src="/resources/js/effects/masonry.pkgd.min.js"  type="text/javascript"></script>

<script src="/resources/js/effects/imagesloaded.js"  type="text/javascript"></script>

<script src="/resources/js/effects/classie.js"  type="text/javascript"></script>

<script src="/resources/js/effects/AnimOnScroll.js"  type="text/javascript"></script>

<script src="/resources/js/effects/modernizr.custom.js"></script>

<!-- jquery.countdown -->

<script src="/resources/js/html5shiv.js" type="text/javascript"></script>

</body>

</html>
