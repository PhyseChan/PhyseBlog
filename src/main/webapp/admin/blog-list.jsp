
<%--
  Created by IntelliJ IDEA.
  User: keyburn1995
  Date: 2019/2/19
  Time: 11:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>
        X-admin v1.0
    </title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <link rel="shortcut icon" href="/resources/images/favicon2.ico" type="image/x-icon" />
    <link rel="stylesheet" href="/resources/css/font.css">
    <link rel="stylesheet" href="/resources/css/xadmin.css">
    <script type="text/javascript" src="https://cdn.bootcss.com/jquery/3.2.1/jquery.min.js"></script>
    <script type="text/javascript" src="/resources/lib/layui/layui.js" charset="utf-8"></script>
    <script type="text/javascript" src="/resources/js/xadmin.js"></script>
</head>
<body>
<div class="x-nav">

</div>
<div class="x-body">
    <xblock><button class="layui-btn layui-btn-danger" onclick="delAll()"><i class="iconfont">&#xe640;</i>批量删除</button><span class="x-right" style="line-height:40px"></span></xblock>
    <table class="layui-table">
        <thead>
        <tr>
            <th>
                <input type="checkbox" name="" value="">
            </th>
            <th>
                博客
            </th>
            <th>
                标题
            </th>
            <th>
                点击量
            </th>

            <th>
                发布时间
            </th>
            <th>
                修改
            </th>
            <th>
                删除
            </th>
        </tr>
        </thead>
        <tbody id="x-link">
        <c:forEach  items="${bloglist}" var="blog">
            <tr>
                <td>
                    <input type="checkbox" value="1" name="">
                </td>
                <td>
                    ${blog.bid}
                </td>
                <td>
                    <a href="/blog/getBlogByid?bid=${blog.bid}">${blog.title}</a>>
                </td>
                <td >
                    ${blog.hits}
                </td>

                <td >
                    ${blog.publishtime}
                </td>
                <td class="td-manage" style="width: 40px">
                    <a title="处理" href="/admin/getupdateblog?bid=${blog.bid}"
                       class="ml-5" style="text-decoration:none">
                        <i class="iconfont">&#xe69e;</i>
                    </a>

                </td>
                <td style="width: 40px">
                    <a title="删除" href="/admin/deleteBlog?bid=${blog.bid}" onclick="feedback_del(this,'1')"
                       style="text-decoration:none">
                        <i class="iconfont">&#xe69a;</i>
                    </a>
                </td>
            </tr>
        </c:forEach>

        </tbody>
    </table>

    <div id="page"></div>
</div>
<script src="/resources/js/layui.js" charset="utf-8"></script>
<script type="text/javascript" src="/resources/js/xadmin.js"></script>
<script>
    layui.use(['element','laypage','layer','form'], function(){
        $ = layui.jquery;//jquery
        lement = layui.element();//面包导航
        laypage = layui.laypage;//分页
        layer = layui.layer;//弹出层
        form = layui.form();//弹出层


    })



    //以上模块根据需要引入

    //批量删除提交
    function delAll () {
        layer.confirm('确认要删除吗？',function(index){
            //捉到所有被选中的，发异步进行删除
            layer.msg('删除成功', {icon: 1});
        });
    }



    // 编辑
    function feedback_edit (title,url,id,w,h) {
        x_admin_show(title,url,w,h);
    }

    /*删除*/
    function feedback_del(obj,id){
        layer.confirm('确认要删除吗？',function(index){
            //发异步删除数据
            $(obj).parents("tr").remove();
            layer.msg('已删除!',{icon:1,time:1000});
        });
    }
</script>
<script>
    var _hmt = _hmt || [];
    (function() {
        var hm = document.createElement("script");
        hm.src = "https://hm.baidu.com/hm.js?b393d153aeb26b46e9431fabaf0f6190";
        var s = document.getElementsByTagName("script")[0];
        s.parentNode.insertBefore(hm, s);
    })();
</script>
</body>
</html>
