/**
 * Created by Administrator on 2016/5/22.
 */
(function($) {

    function loadCompanyList(pageNum, pageSize) {
        var companyConditions = {
            typeID : $("input[name = 'type']:checked").val(),
            keyword : $("#keyword").val(),
            pageNum : pageNum,
            pageSize : pageSize
        };
        $.get("/company/search", companyConditions, function(data) {
            $("#company-list").html(data);
        });
    }

    $(function() {
        loadCompanyList(1, 4);

        $("#company-choices-submit").click(function() {
            loadCompanyList(1, 4);
        });

        $("#company-keyword-submit").click(function() {
            loadCompanyList(1, 4);
        });

    });

})(jQuery);