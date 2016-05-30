/**
 * Created by Administrator on 2016/5/7.
 */
(function ($) {
    var currentUrl = location.pathname;
    $("#navbar").find("a").each(function () {
        if (currentUrl.startsWith($(this).attr("href"))) {
            $(this).parent().addClass("active");
        } else {
            $(this).parent().removeClass("active");
        }
    });
})(jQuery);