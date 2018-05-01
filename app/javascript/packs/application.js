import "bootstrap";
import { initUpdateNavbarOnScroll } from '../components/navbar';
initUpdateNavbarOnScroll();

var slide_images = ["http://www.maroc-roots.com/_html/www.maroc-roots.com/dynamicData/images/Sliders/infos_villes/ouarzazate/5.jpg", "https://cdn1.opnminded.com/wp-content/uploads/2017/10/maroc-06.jpg", "http://www.bivouacsouslesetoiles.org/fichiers_site/a5833has/produits/Think-Morocco-Marrakech-KoutoubiaMosque-508212800-mmeee-copy.jpg", "https://visitemaroc.ca/wp-content/uploads/2017/05/imgCombineMEA.jpg"];
var slide_count = 0;


$(document).ready(function() {

      setInterval(function() {
          slide_count=++slide_count%slide_images.length;

          $('.photo').css('background-image', 'url(\''+slide_images[slide_count]+'\')');
          }, 6000);
});
