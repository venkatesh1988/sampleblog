$(document).ready(function() {
    $("#create").click(function() {
        $('#new_article').hide(function () {
           $(document).html('escape_javascript(render @article)');
            
        });
    });
});

