<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
    <%@ page contentType="text/html;charset=utf-8"%>
    <link rel="stylesheet" href="/resources/css/bootstrap.css" type="text/css">
    <link rel="stylesheet" href="/resources/css/bootstrap-grid.css" type="text/css">
    <link rel="stylesheet" href="/resources/css/bootstrap-reboot.css" type="text/css">
    <link rel="stylesheet" href="/resources/css/core.css" type="text/css">
    <link rel="stylesheet" href="/resources/css/font-awesome.min.css">
    <link rel="stylesheet" href="/resources/css/AdminLTE.min.css">
    <link rel="stylesheet" href="/resources/css/font.css" type="text/css">

    <script type="text/javascript" src="/resources/js/jquery-3.3.1.js"></script>
    <script type="text/javascript" src="/resources/js/bootstrap.js"></script>
    <script type="text/javascript" src="/resources/js/bootstrap.bundle.js"></script>
    <script type="text/javascript" src="/resources/js/core.js"></script>

</head>


<body>
<div class="jumbotron">
    <div class="container">
        <span class="logo-lg">
          <h1 class="headtitle">PhyseのBlog</h1>    
          <p>this is my blog</p>
        </span>
    </div>
</div>
<section class="sec-wrapper">

    <section class="main-section">
        <div class="div-wrapper clearfix">
            <div class="cont-left">
                <div class="cont-item"></div>
                <div class="cont-item"></div>
                <div class="cont-item"></div>
                <div class="cont-item"></div>
                <div class="cont-item"></div>
                <div class="cont-item"></div>
                <c:out value="flag"/>
            </div>
            <div class="list-right">
                <div class="box-fixed">新闻列表</div>
            </div>
        </div>
    </section>
</section>
<footer class="foot">页面底部</footer>


</body>
</html>