/**
 * Created by Administrator on 2016/5/22.
 */
(function($) {

    function loadTalentList(pageNum, pageSize) {
        var talentConditions = {
            authorityID : $("input[name = 'authority']:checked").val(),
            categoryID : $("input[name = 'category']:checked").val(),
            experienceID : $("input[name = 'experience']:checked").val(),
            typeID : $("input[name = 'type']:checked").val(),
            graduationID : $("input[name = 'graduation']:checked").val(),
            keyword : $("#keyword").val(),
            pageNum : pageNum,
            pageSize : pageSize
        }
        $.get("/talent/search", talentConditions, function(data){
            $("#talent-list").html(data);
        });
    }

    $(function() {
        loadTalentList(1, 10);

        $("#talent-choices-submit").click(function() {
            loadTalentList(1, 10);
        });

        $("#talent-keyword-submit").click(function() {
            loadTalentList(1, 10);
        });

    });

})(jQuery);
