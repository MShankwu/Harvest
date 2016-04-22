/**
 * Created by Administrator on 2016/4/21.
 */
$(function () {
    $("#login-submit").click(function () {
        var user = {
            userEmail: $("#login-email").val(),
            userPassword: $("#login-pass").val(),
            userName: $("#login-user").val(),
            userType: $("#login-type").val()
        };

        $.ajax({
            url : "/users",
            type : "get",
            data : {
                userEmail : user.userEmail
            },
            success : function(data) {
                if (data) {
                    alert("该邮箱已经被注册过！");
                } else {
                    $.ajax({
                        url : "/users",
                        type : "post",
                        data : user,
                        success : function(data) {
                            alert("注册成功");
                        }
                    });
                }
            }
        });
    });
});
