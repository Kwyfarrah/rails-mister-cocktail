import Typed from 'typed.js';

const loadDynamicSearchText = () => {
  new Typed('#search_query', {
    strings: ["Mojito", "Sunrise","The Evil Blue Thing"],
    typeSpeed: 200,
    attr: 'placeholder',
    bindInputFocusEvents: true,
    loop: true
  });


}

export { loadDynamicSearchText };
