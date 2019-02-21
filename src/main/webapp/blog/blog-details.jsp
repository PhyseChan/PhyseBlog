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
<!DOCTYPE HTML>

<html>

<head>

    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />

    <meta charset="utf-8">

    <!-- Description, Keywords and Author -->

    <meta name="description" content="">

    <meta name="author" content="">



    <title>Physe Blog</title>

    <script src="/resources/js/jquery.min.js" type="text/javascript"></script>
    <script src="/resources/js/bootstrap.min.js" type="text/javascript"></script>
    <link rel="shortcut icon" href="/resources/images/favicon.ico" type="image/x-icon">



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
<%--    <link href="/resources/css/physestyle.css"  rel="stylesheet" type="text/css" >--%>

    <link rel="stylesheet" href="/resources/wangEditor/release/wangEditor.css" type="text/css">
</head>



<body>



<!-- header -->

<header role="header">

    <div class="container">

        <!-- logo -->

        <h1>

            <a href="index.html" title="Phsye Blog"><img src="/resources/images/favicon-large.png" title="Physe" alt="Physe"/></a>

        </h1>

        <!-- logo -->

        <!-- nav -->

        <nav role="header-nav" class="navy">
            <ul>
                <li class="nav-active"><a href="index.html" title="Work">首页</a></li>
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

<main role="main-inner-wrapper" class="container">



    <div class="blog-details">

        <article class="post-details" id="post-details">

            <header role="bog-header" class="bog-header text-center">
                <h1>${blog.title}</h1>
                <h5>${blog.publishtime}</h5>



            </header>



            <figure>

                <img src="${blog.imageurl}" alt="" class="img-responsive"/>

            </figure>



            <div class="enter-content">


                <p>${blog.context}</p>

            </div>

        </article>



        <!-- Comments -->

        <%--<div class="comments-pan">

            <h3>3 Comments</h3>

            <ul class="comments-reply">

                <li>

                    <figure>

                        <img src="images/blog-images/image-1.jpg" alt="" class="img-responsive"/>

                    </figure>

                    <section>

                        <h4>Anna Greenfield      <a href="#">Reply</a></h4>

                        <div class="date-pan">January 26, 2016</div>

                        Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed volutpat eu nibh ultricies semper. Vivamus porta, felis vitae facilisis sodales, felis est iaculis orci, et ornare sem mauris ut turpis. Pellentesque vitae tortor nec tellus hendrerit aliquam. Donec condimentum leo eu ullamcorper scelerisque pellentesque urna rhoncus.

                    </section>

                    <ol class="reply-pan">

                        <li>

                            <figure>

                                <img src="images/blog-images/image-2.jpg" alt="" class="img-responsive"/>

                            </figure>

                            <section>

                                <h4>Johnathan Doe  <a href="#">Reply</a></h4>

                                <div class="date-pan">January 26, 2016</div>

                                Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed volutpat eu nibh ultricies semper. Vivamus porta, felis vitae facilisis sodales, felis est iaculis orci, et ornare sem mauris ut turpis. Pellentesque vitae tortor nec tellus hendrerit aliquam. Donec condimentum leo eu ullamcorper scelerisque pellentesque urna rhoncus.

                            </section>

                        </li>

                    </ol>

                </li>

                <li>

                    <figure>

                        <img src="images/blog-images/image-3.jpg" alt="" class="img-responsive"/>

                    </figure>

                    <section>

                        <h4>Anna Greenfield  <a href="#">Reply</a></h4>

                        <div class="date-pan">January 26, 2016</div>

                        Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed volutpat eu nibh ultricies semper. Vivamus porta, felis vitae facilisis sodales, felis est iaculis orci, et ornare sem mauris ut turpis. Pellentesque vitae tortor nec tellus hendrerit aliquam. Donec condimentum leo eu ullamcorper scelerisque pellentesque urna rhoncus.

                    </section>



                </li>

            </ul>



            <div class="commentys-form">

                <h4>Leave a comment</h4>



                <div class="row">

                    <form action="" method="get">



                        <div class="col-xs-12 col-sm-4 col-md-4">

                            <input name="" type="text" placeholder="Whats your name *">

                        </div>

                        <div class="col-xs-12 col-sm-4 col-md-4">

                            <input name="" type="email" placeholder="Whats your email *">

                        </div>

                        <div class="col-xs-12 col-sm-4 col-md-4">

                            <input name="" type="url" placeholder="Runing a Website">

                        </div>

                        <div class="clearfix"></div>

                        <div class="col-xs-12 col-sm-12 col-md-12">

                            <textarea name="" cols="" rows="" placeholder="Whats in your mind"></textarea>

                        </div>

                        <div class="text-center">

                            <input name="" type="button" value="Post Comment">

                        </div>





                    </form>

                </div>



            </div>



        </div>--%>



    </div>







</main>

<!-- main -->

<!-- footer -->

<footer role="footer">

    <!-- logo -->

    <h1>

        <a href="/blog/index" title="Physe Blog"><img src="/resources/images/favicon-large.ico" title="Physe" alt="Physe"/></a>

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


<!-- custom -->

<script src="/resources/js/nav.js" type="text/javascript"></script>

<script src="/resources/js/custom.js" type="text/javascript"></script>

<!-- Include all compiled plugins (below), or include individual files as needed -->



<script src="/resources/js/effects/masonry.pkgd.min.js"  type="text/javascript"></script>

<script src="/resources/js/effects/imagesloaded.js"  type="text/javascript"></script>

<script src="/resources/js/effects/classie.js"  type="text/javascript"></script>

<script src="/resources/js/effects/AnimOnScroll.js"  type="text/javascript"></script>

<script src="/resources/js/effects/modernizr.custom.js"></script>

<!-- jquery.countdown -->

<script src="/resources/js/html5shiv.js" type="text/javascript"></script>
<script type="text/javascript" src="/resources/wangEditor/release/wangEditor.js"></script>
</body>

</html>