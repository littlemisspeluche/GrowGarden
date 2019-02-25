import 'js-autocomplete/auto-complete.css';
import autocomplete from 'js-autocomplete';

const autocompleteSearch = function() {
  const searchInput = document.getElementById('query');

  if ( searchInput) {
    new autocomplete({
      selector: searchInput,
      minChars: 1,
      source: function(term, suggest){
        $.getJSON('/autocomplete',
          { q: term },
          function(data) {
            console.log(data)
            suggest(data);
        })
        
      },
      
    });
  }
};

export { autocompleteSearch };