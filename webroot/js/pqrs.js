! function($) {
    'use strict';

    $(function() {
        /* ------------------------------------------------------------ */
        /* from bs/assets/js/application.js */
        var $window = $(window);
        var $body = $(document.body);
        var $sideBar = $('.bs-docs-sidebar');

        var navHeight = $('.navbar').outerHeight(true) + 10;

        $body.scrollspy({
            target: '.bs-docs-sidebar'
        });
        $window.on('load', function() {
            $body.scrollspy('refresh');
        });

        setTimeout(function() {
            $sideBar.affix({
                offset: {
                    top: function() {
                        var offsetTop = $sideBar.offset().top;
                        var sideBarMargin = parseInt($sideBar.children(0).css('margin-top'), 10);
                        var navOuterHeight = $('.bs-docs-nav').height();

                        return (this.top = offsetTop - navOuterHeight - sideBarMargin);
                    },
                    bottom: function() {
                        return (this.bottom = $('.bs-footer').outerHeight(true));
                    }
                }
            });
        }, 100);

        // set bs-docs-sidebar height
        if ($sideBar.length > 0 && $sideBar.offset().left < 400) {
            // $sideBar block is wrapped because the window.width is too small.
            // We should not set $sideBar.height.
        } else {
            $sideBar.height($window.height() - 50);
            $sideBar.css('overflow', 'auto');
        }

        /* ------------------------------------------------------------ */
        /* pqrs.org */
        $('h1[id], h2[id], h3[id]').each(function() {
            var $this = $(this);
            $this.prepend(' <a class="js-id-link" href="#' + $this.attr('id') + '"><small><span class="glyphicon glyphicon-link"></span></small></a> ');
            $this.wrapInner('<div class="js-id-link-wrapper"></div>');
        });

        $('.modal-dialog').click(function() {
            $(this).parent().modal('hide');
        });
    });

}(window.jQuery);
