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
            window.location.href="/blog/index";
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
            alert("发布成功");
            window.location.href = '/admin/getBlogInfoList';
        }
    });
}

function updateblog() {
    var a={
        "title":$("#title").val(),
        "summary":$("#summary").val(),
        "imageurl":$("#imageurl").attr('src'),
        "context":editor.txt.html(),
        "bid":$("#bid").val()
    }
    var url='/admin/updateblog'
    $.ajax({
        type : 'post',
        url : url,
        //设置contentType类型为json
        contentType : 'application/json;charset=utf-8',
        //json数据
        dataType : "json",
        data : JSON.stringify(a),
        //请求成功后的回调函数
        success : function(data) {
            alert("修改成功");
            window.location.href = '/admin/getBlogInfoList';
        }
    });
}