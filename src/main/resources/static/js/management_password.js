/**
 * Created by Administrator on 2016/5/26.
 */
(function ($) {

    var passwordPattern = /^\w{5,20}$/;
    var validate = function (data) {
        if (!passwordPattern.test(data.originPass) || !passwordPattern.test(data.targetPass)
            || !passwordPattern.test(data.targetPassSure)) {
            return "修改失败：密码不合法（5-20位字母数字或下划线）！";
        } else if (data.targetPass !== data.targetPassSure) {
            return "修改失败：两次输入的新密码不一致！";
        } else {
            return "success";
        }
    };

    $(function () {
        $("#password-change").click(function () {
            var errorMessage = $("#error-message");
            var changeData = {
                originPass: $("#origin-pass").val(),
                targetPass: $("#target-pass").val(),
                targetPassSure: $("#target-pass-sure").val()
            };
            var resultMessage = validate(changeData);
            if (resultMessage !== "success") {
                errorMessage.removeClass("hidden");
                errorMessage.html(resultMessage);
            } else {
                errorMessage.removeClass("hidden");
                $("#password-change-form").submit();
            }
        });
    });

})(jQuery);