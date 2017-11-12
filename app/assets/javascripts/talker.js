/**
 * Show or hide accordion content when the toggle is pressed.
 */
function toggleAccordion(e) {
    var toggler = $(e.target).closest('.accordion-toggle');
    var content = toggler.next('.accordion-content');

    toggler.toggleClass('active');
    content.toggleClass('hidden');
}

/**
 * Show or hide the global sidebar
 */
function toggleSidebar(e) {
    var sidebar = $('#sidebar');
    sidebar.toggleClass('active');
}

$(function() {
    $('.accordion-toggle').on('click', toggleAccordion);
    $('#top-menu').on('click', toggleSidebar);
    $('#sidebar-close').on('click', toggleSidebar);
});
