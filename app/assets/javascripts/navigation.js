
// Create the Nystra Namespace
if(typeof Nystra === "undefined") {
    var Nystra = {};
}

Nystra.initialize_navigation = function(){
    $('.nav-menu').bind('click', function () {
        var enabled = $('.hero.nav.aboutnav').hasClass('enabled');
        if (enabled) {
            $('.hero.nav.aboutnav').removeClass('enabled');
            $('.hero.intro').removeClass('masked');
            $('.hero.about').removeClass('masked');
            $('.nav-menu').removeClass('enabled');
            windowScrollTicks = 0;
        }
        else {
            $('.hero.nav.aboutnav').addClass('enabled');
            $('.hero.intro').addClass('masked');
            $('.hero.about').addClass('masked');
            $('.nav-menu').addClass('enabled');
            $('.hero.nav.signin').removeClass('enabled');
            $('.hero.nav.signup').removeClass('enabled');
        }
    });

    $('.signup-menu').bind('click', function () {
        var enabled = $('hero.nav.signup').hasClass('enabled');
        if (enabled) {
            $('.hero.nav.signup').removeClass('enabled');
            $('.hero.nav.signin').addClass('enabled');
        }
        else {
            $('.hero.nav.signup').addClass('enabled');
            $('.hero.nav.signin').removeClass('enabled');
            $('.hero.nav.aboutnav').removeClass('enabled');
        }
    });

    $('.signin-button').bind('click', function () {
        var enabled = $('.hero.nav.signin').hasClass('enabled');
        if (enabled) {
            $('.hero.nav.signin').removeClass('enabled');
            $('.hero.nav.signup').removeClass('enabled');
        }
        else {
            $('.hero.nav.signin').addClass('enabled');
            $('.hero.nav.signup').removeClass('enabled');
            $('.hero.nav.aboutnav').removeClass('enabled');
        }
    });

}