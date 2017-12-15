$(function() {
    $('#new_comment').on('submit', function(e) { 
       //need url to submit post request
        //need the form data

        $.ajax({
            type: ($("input[name='_method']").val() || this.method),
            url: this.action,
            data: $(this).serialize(),
            success: function(response) {
                debugger
            }
        })
    })
})