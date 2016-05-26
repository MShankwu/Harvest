/**
 * Created by Administrator on 2016/5/26.
 */
(function ($) {

    var passwordPattern = /^\w{5,20}$/;

    var errorMessage = $("#error-message");

    function checkPassStyle(password) {
        if (!passwordPattern.test(password)) {
            errorMessage.removeClass("hidden");
            errorMessage.html("密码格式有误：5-20位字母数字或下划线！");
        } else {
            errorMessage.addClass("hidden");
            errorMessage.html("");
        }
    }

    $(function () {
        $("#origin-pass").blur(function () {
            checkPassStyle($(this).val());
        });

        $("#target-pass").blur(function () {
            checkPassStyle($(this).val());
        });

        $("#target-pass-sure").blur(function () {
            checkPassStyle($(this).val());
        });

        $("#password-change").click(function () {
            
        });
    });

})(jQuery);