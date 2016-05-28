/**
 * Created by Administrator on 2016/5/29.
 */
(function ($) {

    $(function () {
        var errorMessage = $("#error-message");

        $("#message-submit").click(function () {
            var title = $("input[name = 'title']").val();
            var email = $("input[name = 'email']").val();
            if (title == "" || email == "") {
                errorMessage.removeClass("hidden");
                errorMessage.html("发送失败：邮件标题和目标邮箱都不能为空!");
            } else {
                errorMessage.addClass("hidden");
                errorMessage.html("");
                $("form").submit();
            }

        });

    });

})(jQuery);