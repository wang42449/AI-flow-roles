// ==UserScript==
// @name         咪咕比赛回放隐藏比分
// @namespace    http://tampermonkey.net/
// @version      0.4
// @license MIT
// @description  隐藏咪咕视频回放
// @author       wanwen
// @match        https://www.miguvideo.com/*
// @grant        none
// ==/UserScript==
 
(function() {
    'use strict';
 
    function hideNumbers() {
        var elements = document.querySelectorAll('.video-title, h1, h2');
        var arabicNumeralPattern = /[0-9]/;
        elements.forEach(function(element) {
            if (arabicNumeralPattern.test(element.textContent)) {
                element.style.display = 'none';
            }
        });
    }
 
    function hideEpisodeElement() {
        var episodeElement = document.querySelector('.episode.fr');
        if (episodeElement) {
            episodeElement.style.display = 'none';
        }
    }
 
    function zoomPage() {
        document.body.style.zoom = "100%";
    }
 
    var observer = new MutationObserver(function(mutations) {
        mutations.forEach(function(mutation) {
            if (mutation.addedNodes && mutation.addedNodes.length > 0) {
                // Call hideNumbers and hideEpisodeElement on each mutation to ensure elements are hidden
                hideNumbers();
                hideEpisodeElement();
            }
        });
    });
 
    var config = { childList: true, subtree: true };
 
    // Start observing the body for changes in the DOM
    observer.observe(document.body, config);
 
    // Initial call to hide numbers, hide episode element, and set zoom
    hideNumbers();
    hideEpisodeElement();
    zoomPage();
})();
// 咪咕视频比分隐藏油猴脚本，ai模型辅助生成
