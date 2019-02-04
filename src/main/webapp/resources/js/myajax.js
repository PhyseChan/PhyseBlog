function getblog() {
    var idval=document.getElementById("bid").value;
    var d={"bid":idval}
    $.ajax({
        type : 'post',
        url : '/blog/getBlogByid',
        //设置contentType类型为json
        contentType : 'application/json;charset=utf-8',
        //json数据
        dataType : "json",
        data : JSON.stringify(d),
        //请求成功后的回调函数
        success : function(data) {
            alert(data.context);
            window.location.href="/blog/index.html";
        }
    });
}

function uploadcontext() {
    var a={
        "title":"title1",
        "summary":"helloworld",
        "context":editor.txt.html()
    }
    $.ajax({
        type : 'post',
        url : '/admin/insertBlog',
        //设置contentType类型为json
        contentType : 'application/json;charset=utf-8',
        //json数据
        dataType : "json",
        data : JSON.stringify(a),
        //请求成功后的回调函数
        success : function(data) {
            alert(data.flag)
            htmlval="<h1>success</h1><a href='/admin/manager.jsp'>返回</a>";
            $("#editor").html(htmlval)
        }
    });
}