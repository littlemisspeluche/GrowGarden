
import "bootstrap";
import { autocompleteSearch } from '../components/autocomplete';
import { fetching } from '../components/weather';

import { initAutocomplete } from '../plugins/init_autocomplete';
=======
import { fadeInUp, debounce } from '../components/how_it_works.js';

window.addEventListener('scroll', debounce(function() {
  fadeInUp();

}));

autocompleteSearch();
initAutocomplete();
// fetching("London, GB")

