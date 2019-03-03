
import "bootstrap";
import { autocompleteSearch } from '../components/autocomplete';
import { fetching } from '../components/weather';
import { fadeInUp, debounce } from '../components/how_it_works.js';

window.addEventListener('scroll', debounce(function() {
  fadeInUp();

}));

autocompleteSearch();
// fetching("London, GB")

