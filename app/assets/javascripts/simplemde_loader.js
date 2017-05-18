/**
 * Load SimpleMDE editor in the relevant text areas
 */
function loadSimpleMDE() {
    var textarea = $('.md-textarea');

    if (!textarea.length)
        return;

    var simplemde = new SimpleMDE({
        element: textarea[0],
        autoDownloadFontAwesome: false,
        forceSync: true,
        spellChecker: false,
        tabSize: 4
    });
}

$(function() {
    // Load SimpleMDE when loaded
    loadSimpleMDE();
});
