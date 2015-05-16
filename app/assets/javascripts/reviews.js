$(document).ready(function(){

  $('#review_content').on('input', function(){
    if ( $('#review_content').val().length > 500){
      alert('you cant do that');
    }

    $('#length-count').text( $('#review_content').val().length );
  });

});