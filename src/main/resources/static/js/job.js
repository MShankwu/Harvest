/**
 * Created by Administrator on 2016/5/18.
 */
(function ($) {

    $(function () {
        $('#collapseFour').collapse({
            toggle: false
        });

        $('#collapseTwo').collapse('show');
        $('#collapseThree').collapse('toggle');
        $('#collapseOne').collapse('hide');
    });

})(jQuery);
