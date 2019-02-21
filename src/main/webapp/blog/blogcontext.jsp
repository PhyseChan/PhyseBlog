<%--
  Created by IntelliJ IDEA.
  User: qibinliang
  Date: 2019-02-04
  Time: 13:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<html>
<head>
    <title>Title</title>

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
    <script type="text/javascript" src="/resources/js/myajax.js"></script>
    <link rel="stylesheet" href="/resources/wangEditor/release/wangEditor.css" type="text/css">
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
                <h2>${blog.title}</h2>
                ${blog.publishtime}
                ${blog.context}

            </div>
            <div class="list-right">
                <div class="box-fixed "><div><a href="/blog/index">主页</a></div>分类<div><a href="#">类别1</a></div><div><a href="#">类别2</a></div></div>
            </div>
        </div>
    </section>
</section>
</body>
</html>
