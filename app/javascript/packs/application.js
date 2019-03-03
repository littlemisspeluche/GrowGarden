
import "bootstrap";
import { autocompleteSearch } from '../components/autocomplete';
import { fetching } from '../components/weather';
import { initAutocomplete } from '../plugins/init_autocomplete';

autocompleteSearch();
initAutocomplete();
// fetching("London, GB")

