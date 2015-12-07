$(document).ready(function() {
  var group_id = '1428207830813450';
  var url = 'https://graph.facebook.com/' + group_id;
  var auth = {

  };



  $.get('https://graph.facebook.com/1428207830813450/feed?access_token=CAACEdEose0cBADy7gW6pjQaulUCX1B32KwcBlOFZCHlSmb6epjHyr6ZAFaB9MnQFZAlA1gZASv5Wqf53GWh0K13IOWV4hF3UlsVOqGrbOrfz3Op0QTYceUZBLdVfv3Ys0hwOZApshOtuv7ctpTTgNiHOGuZCIzG2qpplEBkAE9INW3LhTqXyuZAfPi5VFmg6yYJFqUXImGZAw9AZDZD',
  function(response) {
    var html = "<ul>";
    $.each(response.data, function(i, post){
      html += "<li>" + $('<div>').html(post.message).text() + "</li>";
    });
    html += "</ul>";
    $('.facebook').html(html);
  });
});
