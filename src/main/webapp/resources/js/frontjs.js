$(function () {
    console.log("do action")
    getCategory()
})

function getCategory() {
    $.ajax({
        type : 'post',
        url : '/blog/getcategory',
        //设置contentType类型为json
        contentType : 'application/json;charset=utf-8',
        //json数据
        dataType : "json",
        //请求成功后的回调函数
        success : function(data) {
            var htmltext="";
            for (var i=0;i<data.length;i++){
                htmltext+='<a style="margin-right: 10px" href="/blog/category?typename='+data[i].typename+'">'+data[i].typename+'</a>';
            }
            $('#gettarget').append(htmltext)
        }
    });
}