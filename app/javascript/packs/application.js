
import "bootstrap";
import { autocompleteSearch } from '../components/autocomplete';
import { fetching } from '../components/weather';

import { initAutocomplete } from '../plugins/init_autocomplete';
import { fadeInUp, debounce } from '../components/how_it_works.js';
import {  } from '../components/icons.js';
import {Light} from '../components/garden_show.js';

window.addEventListener('scroll', debounce(function() {
  fadeInUp();

}));

autocompleteSearch();
initAutocomplete();



// fetching("London, GB")


