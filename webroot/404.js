// -*- Mode: ecmascript; indent-tabs-mode: nil; -*-

function gotoUpperDirectory() {
    var uri = document.location.href;
    // cut URI parameter
    if (uri.match(/^(.+?)\?/) != null) {
        uri = RegExp.$1;
    }

    // chop last '/' if exist.
    if (uri.match(/^(.+?)\/$/) != null) {
        uri = RegExp.$1;
    }

    if (uri.match(/^(.+:\/\/.+\/)[^\/]+$/)) {
        var parenturi = RegExp.$1;
        document.location.href = parenturi;
    }
}
