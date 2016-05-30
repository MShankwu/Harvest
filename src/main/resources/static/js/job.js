/**
 * Created by Administrator on 2016/5/18.
 */
(function ($) {

    function loadJobList(pageNum, pageSize) {
        var jobConditions = {
            salaryID : $("input[name='salary']:checked").val(),
            experienceID : $("input[name='experience']:checked").val(),
            graduationID : $("input[name='graduation']:checked").val(),
            categoryID : $("input[name='category']:checked").val(),
            keyword : $("#keyword").val(),
            pageNum : pageNum,
            pageSize : pageSize
        };
        $.get("/job/search", jobConditions, function(data) {
            $("#job-list").html(data);
        });
    }

    $(function () {

        loadJobList(1, 10);

        $("#job-choices-submit").click(function() {
            loadJobList(1, 10);
        });

        $("#job-keyword-submit").click(function() {
            loadJobList(1, 10);
        });

    });

})(jQuery);
