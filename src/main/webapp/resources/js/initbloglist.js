$(document).ready(function() {
    ajaxRequest();
});

function ajaxRequest() {
    $.ajax({
        url: "/blog/getBlogBypage",
        type: "get",
        dataType: "json",
        data: {

        },
        async: false,
        success: function(data) {
            alert("success");
            $.each(data, function(index, element) {
                alert(element.a);
                alert(element.b);
                alert(element.c);
            });
        },
        error: function() {
            alert("error");
        }
    });
}