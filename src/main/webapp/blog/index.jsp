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
    <title>Title</title>

    <link rel="stylesheet" href="/resources/css/bootstrap.css" type="text/css">
    <link rel="stylesheet" href="/resources/css/bootstrap-grid.css" type="text/css">
    <link rel="stylesheet" href="/resources/css/bootstrap-reboot.css" type="text/css">
    <link rel="stylesheet" href="/resources/css/core.css" type="text/css">
    <link rel="stylesheet" href="/resources/css/font-awesome.min.css">
    <link rel="stylesheet" href="/resources/css/font.css" type="text/css">
    <link href="/resources/css/bg.css" rel="stylesheet" type="text/css">
    <link rel="stylesheet" href="/resources/jQuery-spqh/css/style.css">
    <link rel="stylesheet" type="text/css" href="/resources/VerticalTimeline/css/default.css" />
    <link rel="stylesheet" type="text/css" href="/resources/VerticalTimeline/css/component.css" />
    <link rel="stylesheet" type="text/css" href="/resources/jQueryButtonHover/css/main.css" />

    <script type="text/javascript" src="/resources/js/jquery-3.3.1.js"></script>
    <script type="text/javascript" src="/resources/js/bootstrap.js"></script>
    <script type="text/javascript" src="/resources/js/bootstrap.bundle.js"></script>
    <script type="text/javascript" src="/resources/garand-sticky/jquerysticky.js"></script>
    <script type="text/javascript" src="/resources/jQuery-spqh/js/modernizr.js"></script>


</head>


<body>
<script>
    $(document).ready(function(){
        $("#sticker").sticky({topSpacing:0});
    });
</script>


<div class="jumbotron bg">
    <div class="container2 ">
        <div class="drag">
        <span class="logo-lg">
          <h1 class="headtitle"></h1>    
          <p></p>
        </span>
        </div>
    </div>
</div>
<section class="sec-wrapper">
    <div class="overflow">
        <section class="panels">
            <article class="panels__side panels__side--left">
                <div class="panels__side panels__side--inner-left">
                    我是你哥^ _ ^
                </div>
                <div class="panels__side panels__side--inner">
                    <header class="htmleaf-header">
                        <h1 class="panels__headline">站长资料</h1>
                    </header>
                    <!-- <h1 class="panels__headline">Noam Chomsky</h1>   -->
                    <svg class="arrow arrow--left" width="40" height="40" viewBox="0 0 24 24"><path d="M0 0h24v24h-24z" fill="none"/><path d="M20 11h-12.17l5.59-5.59-1.42-1.41-8 8 8 8 1.41-1.41-5.58-5.59h12.17v-2z"/></svg>
                </div>
            </article>
            <article class="panels__side panels__side--right">
                <div class="panels__side panels__side--inner">
                    <h1 class="panels__headline">菜单</h1>
                    <svg class="arrow arrow--right" width="40" height="40" viewBox="0 0 24 24"><path d="M0 0h24v24h-24z" fill="none"/><path d="M12 4l-1.41 1.41 5.58 5.59h-12.17v2h12.17l-5.58 5.59 1.41 1.41 8-8z"/></svg>
                </div>
                <div class="panels__side panels__side--inner-right">
                    <div class="wrapper-inner-tab">
                        <div class="wrapper-inner-tab-title">我是你哥2.0</div>
                            <div class="wrapper-inner-tab-backgrounds-first"><div class="sim-button button5" data-text="Login"><a href="/blog/blogPage">coding</a></div></div>
                            <div class="wrapper-inner-tab-backgrounds-second"><div class="sim-button button5" data-text="Register"><a href="/blog/login.html">计算计科学</a></div></div>
                            <div class="wrapper-inner-tab-backgrounds-third"><div class="sim-button button5" data-text="Recover Password"><a href="/blog/login.html">杂</a></div></div>
                </div>
                </div>
            </article>
        </section>
    </div>

    <script type="text/javascript">
        $(function() {

            var Panels = (function() {

                var panelLeft = document.querySelector('.panels__side--left');
                var panelRight = document.querySelector('.panels__side--right');

                var openLeft = function() {
                    panelLeft.classList.toggle('panels__side--left-active');
                    panelRight.classList.toggle('panels__side--right-hidden');
                };

                var openRight = function() {
                    panelRight.classList.toggle('panels__side--right-active');
                    panelLeft.classList.toggle('panels__side--left-hidden');
                };

                var bindActions = function() {
                    panelLeft.addEventListener('click', openLeft, false);
                    panelRight.addEventListener('click', openRight, false);
                };

                var init = function() {
                    bindActions();
                };

                return {
                    init: init
                };

            }());

            Panels.init();
        });
    </script>

</section>

<%--<footer class="foot">

</footer>--%>



</body>
</html>