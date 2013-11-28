$(document).ready(function() {



    $('#mainnav  ul li').click(function() {



        if ($(this).hasClass("hasSub")) {
            iconElem = $(this).find('i');
            ulElem = $(this).children('ul');

            if (ulElem.hasClass("expand")) {
                ulElem.removeClass('expand');
                ulElem.removeClass('show');
                iconElem.removeClass('icon-caret-up');
                iconElem.addClass('icon-caret-down');

            } else {

                $('#mainnav > ul .current').removeClass("current");
                $('#mainnav > ul .expand').removeClass("expand");
                $('#mainnav > ul .show').removeClass("show");
                $('#mainnav > ul .icon-caret-up').addClass("icon-caret-down");
                $('#mainnav > ul .icon-caret-up').removeClass("icon-caret-up");

                $(this).addClass("current");

                ulElem.addClass('expand');
                ulElem.addClass('show');
                iconElem.removeClass('icon-caret-down');
                iconElem.addClass('icon-caret-up');

            }


        } else {
            $('#mainnav > ul .current').removeClass("current");
            $('#mainnav > ul .expand').removeClass("expand");
            $('#mainnav > ul .show').removeClass("show");
            $('#mainnav > ul .icon-caret-up').addClass("icon-caret-down");
            $('#mainnav > ul .icon-caret-up').removeClass("icon-caret-up");

            $(this).addClass("current");

        }


    });

});