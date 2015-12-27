// ==UserScript==
// @name        Kryssa för rätt person på aktivitetskortet
// @namespace   nackasmu
// @include     https://aktivitetskort.se/*
// @version     1
// ==/UserScript==

(function () {

    var button = document.createElement("input");
    button.type = "button";
    button.value = "Fyll i snabbt och smidigt!?";

    button.onclick = function (e) {

        var rawData = prompt("Ange födelsedatumen för de som var närvarande. Format: ÅÅMMDD.");

        var elements = document.getElementsByTagName("td");

        var tokens = rawData.split(/[^\d]+/);
        for (var t in tokens) {
            var token = tokens[t];

            var found = false;
            for (var i=0; i < elements.length; i++) {
                var element = elements.item(i);
                if (element.textContent == token) {
                    element.nextSibling.firstElementChild.checked = true;
                    found = true;
                    break;
                }
            }
            if (!found) {
                alert("Could not find checkbox for " + token);
            }
        }
    };
    var container = document.getElementById("DeltagarePanel");
    container.insertBefore(button, container.firstChild);

})();
