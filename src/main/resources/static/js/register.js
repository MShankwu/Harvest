/**
 * Created by Administrator on 2016/4/21.
 */
(function ($) {

    var isExist = false;

    var emailPattern = /^((([a-z]|\d|[!#\$%&'\*\+\-\/=\?\^_`{\|}~]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])+(\.([a-z]|\d|[!#\$%&'\*\+\-\/=\?\^_`{\|}~]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])+)*)|((\x22)((((\x20|\x09)*(\x0d\x0a))?(\x20|\x09)+)?(([\x01-\x08\x0b\x0c\x0e-\x1f\x7f]|\x21|[\x23-\x5b]|[\x5d-\x7e]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(\\([\x01-\x09\x0b\x0c\x0d-\x7f]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF]))))*(((\x20|\x09)*(\x0d\x0a))?(\x20|\x09)+)?(\x22)))@((([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])([a-z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])*([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])))\.)+(([a-z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(([a-z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])([a-z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])*([a-z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])))\.?$/i;
    var passwordPattern = /^\w{5,20}$/;

    var validate = function (data) {
        if (data.userEmail === "" || data.userName === "" || data.userPassword === "") {
            return "注册失败：每一项都不能为空！";
        } else if (!emailPattern.test(data.userEmail)) {
            return "注册失败: 邮箱地址不合法！";
        } else if (!passwordPattern.test(data.userPassword)) {
            return "注册失败：密码不合法（5-20位字母数字或下划线）！"
        } else if (data.userName.length > 50) {
            return "注册失败：名字长度过长！";
        } else if (isExist)  {
            return "注册失败：该邮箱地址已经被注册过！";
        } else {
            return "success";
        }
    };

    $(function () {

        $("#login-email").blur(function() {
            $.ajax({
                url : "/users",
                type : "get",
                async : false,
                data : {
                    userEmail : $("#login-email").val()
                },
                success : function(result) {
                    if (result) {
                        $("#login-message").removeClass("hidden");
                        $("#login-message").find(">label:first-child").html("警告：该邮箱地址已经被注册过！");
                        isExist = true;
                    } else {
                        $("#login-message").addClass("hidden");
                        $("#login-message").find(">label:first-child").html("");
                        isExist = false;
                    }
                }
            });
        });

        $("#login-submit").click(function () {

            var loginData = {
                userEmail : $("#login-email").val(),
                userPassword : $("#login-pass").val(),
                userName : $("#login-user").val(),
                userType : $("#login-type").val()
            };
            var result = validate(loginData);

            if (result !== "success") {
                $("#login-message").removeClass("hidden");
                $("#login-message").find(">label:first-child").html(result);
            } else {
                $("#login-message").addClass("hidden");
                $("#login-message").find(">label:first-child").html("");

                $("#register").submit();
            }
        });

    });

})(jQuery);



