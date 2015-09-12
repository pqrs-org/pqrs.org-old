! function($) {
    'use strict';

    $(function() {
        /* ------------------------------------------------------------ */
        /* from bs/assets/js/application.js */
        var $window = $(window);
        var $body = $(document.body);

        var navHeight = $('.navbar').outerHeight(true) + 10;

        $body.scrollspy({
            target: '.bs-docs-sidebar'
        });
        $window.on('load', function() {
            $body.scrollspy('refresh');
        });

        setTimeout(function() {
            var $sideBar = $('.bs-docs-sidebar');

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

        /* ------------------------------------------------------------ */
        /* pqrs.org */
        $('h1[id], h2[id], h3[id]').each(function() {
            var $this = $(this);
            $this.prepend(' <a class="id-link" href="#' + $this.attr('id') + '"><small><span class="glyphicon glyphicon-link"></span></small></a> ');
        });

        $('.modal-dialog').click(function() {
            $(this).parent().modal('hide');
        });
    });

}(window.jQuery);
