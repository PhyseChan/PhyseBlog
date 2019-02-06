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



    <title>:: avana LLC | Blog ::</title>

    <link rel="shortcut icon" href="/resources/images/favicon2.ico" type="image/x-icon">



    <!-- style -->

    <link href="/resources/css/style.css" rel="stylesheet" type="text/css">

    <!-- style -->

    <!-- bootstrap -->

    <link href="/resources/css/bootstrap.min.css" rel="stylesheet" type="text/css">

    <!-- responsive -->

    <link href="/resources/css/responsive.css" rel="stylesheet" type="text/css">

    <!-- font-awesome -->

    <link href="/resources/css/fonts.css" rel="stylesheet" type="text/css">

    <link rel="stylesheet" type="text/css" href="http://www.jq22.com/jquery/font-awesome.4.6.0.css">

    <!-- font-awesome -->

    <link href="/resources/css/effects/normalize.css" rel="stylesheet" type="text/css">

    <link href="/resources/css/effects/component.css"  rel="stylesheet" type="text/css" >

</head>



<body>



<!-- header -->

<header role="header">

    <div class="container">

        <!-- logo -->

        <h1>

            <a href="index.html" title="avana LLC"><img src="/resources/images/favicon-large.ico" title="avana LLC" alt="avana LLC"/></a>

        </h1>

        <!-- logo -->

        <!-- nav -->

        <nav role="header-nav" class="navy">
            <ul>
                <li class="nav-active"><a href="index.html" title="Work">首页</a></li>
                <li><a href="about.html" title="About">关于</a></li>
                <li><a href="webDevelopment.html" title="web development">web开发</a></li>
                <li><a href="408.html" title="computer science">408综合</a></li>
                <li><a href="mathematics.html" title="higher mathematics & linear algebra">高数 & 线代</a></li>
                <li><a href="contact.html" title="Contact">联系我</a></li>
            </ul>
        </nav>

        <!-- nav -->

    </div>

</header>

<!-- header -->

<!-- main -->

<main role="main-inner-wrapper" class="container">



    <div class="row">



        <section class="col-xs-12 col-sm-6 col-md-6 col-lg-6 grid">
            <ul class="grid-lod effect-2" id="grid">
                <c:forEach items="${bloglist1}" var="blog1">
                    <li>
                        <figure class="effect-oscar"> <img src="${blog1.imageurl}" alt="" class="img-responsive"/>
                            <figcaption>
                                <h2>${blog1.title} </h2>

                                <p>${blog1.summary}</p>
                                <h4><span>${blog1.publishtime}</span></h4>
                                <a href="works-details.html">View more</a> </figcaption>
                        </figure>
                    </li>
                </c:forEach>

            </ul>
        </section>


        <section class="col-xs-12 col-sm-6 col-md-6 col-lg-6 grid">
            <ul class="grid-lod effect-2" id="grid">
                <c:forEach items="${bloglist2}" var="blog2">
                    <li>
                        <figure class="effect-oscar"> <img src="${blog2.imageurl}" alt="" class="img-responsive"/>
                            <figcaption>
                                <h2>${blog2.title} </h2>

                                <p>${blog2.summary}</p>
                                <h4><span>${blog2.publishtime}</span></h4>
                                <a href="works-details.html">View more</a> </figcaption>
                        </figure>
                    </li>
                </c:forEach>
            </ul>
        </section>





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

            <li><a href="index.html" title="Work">Work</a></li>

            <li><a href="about.html" title="About">About</a></li>

            <li><a href="blog.html" title="Blog">Blog</a></li>

            <li><a href="contact.html" title="Contact">Contact</a></li>

        </ul>

    </nav>

    <!-- nav -->

    <ul role="social-icons">

        <li><a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>

        <li><a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>

        <li><a href="#"><i class="fa fa-linkedin" aria-hidden="true"></i></a></li>

        <li><a href="#"><i class="fa fa-flickr" aria-hidden="true"></i></a></li>

    </ul>

    <p class="copy-right">&copy; 2015  avana LLC.. All rights Resved</p>

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
