! function($) {
    'use strict';

    $(function() {
        /* ------------------------------------------------------------ */
        /* from bs/assets/js/application.js */
        var $window = $(window);
        var $body = $(document.body);
        var $sideBar = $('#bs-docs-sidebar');

        $body.scrollspy({
            target: '.bs-docs-sidebar'
        });
        $window.on('load', function() {
            $body.scrollspy('refresh');
        });

        // set bs-docs-sidebar height
        if ($sideBar.length > 0 && $sideBar.offset().left < 400) {
            // $sideBar block is wrapped because the window.width is too small.
            // We should not set $sideBar.height.
            $sideBar.hide();
        } else {
            $sideBar.height($window.height() - 250);
            $sideBar.css('overflow', 'auto');
        }

        /* ------------------------------------------------------------ */
        /* pqrs.org */
        $('h1[id], h2[id], h3[id], div[id]').each(function() {
            var $this = $(this);
            $this.prepend(' <a class="js-id-link" href="#' + $this.attr('id') + '"><small><span class="glyphicon glyphicon-link"></span></small></a> ');
            $this.wrapInner('<div class="js-id-link-wrapper"></div>');
        });

        $('.modal-dialog').click(function() {
            $(this).parent().modal('hide');
        });
    });

}(window.jQuery);
