<%--
  Created by IntelliJ IDEA.
  User: keyburn1995
  Date: 2019/2/23
  Time: 16:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>editpage</title>
    <link rel="stylesheet" href="https://cdn.bootcss.com/twitter-bootstrap/4.2.1/css/bootstrap.css" type="text/css">
    <link rel="stylesheet" href="https://cdn.bootcss.com/twitter-bootstrap/4.2.1/css/bootstrap-grid.css" type="text/css">
    <link rel="stylesheet" href="https://cdn.bootcss.com/twitter-bootstrap/4.2.1/css/bootstrap-reboot.css" type="text/css">
    <link rel="stylesheet" href="/resources/css/core.css" type="text/css">
    <link rel="stylesheet" href="/resources/css/font-awesome.min.css">
    <link rel="stylesheet" href="/resources/css/font.css" type="text/css">

    <script type="text/javascript" src="/resources/js/jquery-3.3.1.js"></script>
    <link rel="stylesheet" href="https://cdn.bootcss.com/twitter-bootstrap/4.2.1/js/bootstrap.js" type="text/css">
    <script type="text/javascript" src="/resources/js/bootstrap.bundle.js"></script>
    <script type="text/javascript" src="/resources/js/myajax.js"></script>
</head>
<body>
<div class="div-wrapper clearfix" style="width: 1000px; margin-left:auto; margin-right: auto;">
    <input type="text" value="${blog.bid}" id="bid" style="visibility: hidden;"readonly="true" >
    标题：<input type="text" value="${blog.title}" id="title">
    介绍：<input type="text" value="${blog.summary}" id="summary">
    封面：<img src="${blog.imageurl}" id="imageurl" style="width: 200px">

    <div  id="editor">
            ${blog.context}
    </div>
    <input type="button" value="提交" onclick="updateblog()">
</div>
<style>
    .w-e-text-container {
        height: 600px !important;
    }
</style>
<!-- 注意， 只需要引用 JS，无需引用任何 CSS ！！！-->
<script type="text/javascript" src="/resources/wangEditor/release/wangEditor.js"></script>
<script type="text/javascript">
    var E = window.wangEditor
    var editor = new E('#editor')
    // 或者 var editor = new E( document.getElementById('editor') )
    editor.customConfig.uploadImgServer = '/admin/uploadimage'
    editor.customConfig.zIndex = 300
    editor.customConfig.uploadImgHooks = {
        before : function(xhr, editor, files) {

        },
        success : function(xhr, editor, result) {
            console.log("上传成功");
        },
        fail : function(xhr, editor, result) {
            console.log(xhr)
            console.log("上传失败,原因是"+result);
        },
        error : function(xhr, editor) {
            console.log("上传出错");
        },
        timeout : function(xhr, editor) {
            console.log("上传超时");
        }
    }

    editor.create()
</script>



</body>
</html>
