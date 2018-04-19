import "bootstrap";

var slide_images = ["https://images.unsplash.com/photo-1512971315293-16de41c120a5?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=5ab394a85cb80de9a99c542eba1db8f2&auto=format&fit=crop&w=1050&q=80", "https://images.unsplash.com/photo-1515386474292-47555758ef2e?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=381521908533838ee6a30b29c08aa3f9&auto=format&fit=crop&w=967&q=80"];
var slide_count = 0;


$(document).ready(function() {

      setInterval(function() {
          slide_count=++slide_count%slide_images.length;

          $('.banner').css('background-image', 'url(\''+slide_images[slide_count]+'\')');
          }, 4000);

});
