// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

import { loadDynamicSearchText } from '../components/searchbar';

document.addEventListener('turbolinks:load', () => {
  // Call your JS functions here
  // [...]
  loadDynamicSearchText();
});

import { voteUp } from '../components/vote';
document.addEventListener('turbolinks:load', () => {
  // Call your JS functions here
  voteUp();
});

import { initUpdateNavbarOnScroll } from '../components/navbar';

document.addEventListener('turbolinks:load', () => {
  // Call your JS functions here
  initUpdateNavbarOnScroll();
});

require("channels")
require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
import jquery from 'jquery';
window.$ = window.jquery = jquery;

import 'bootstrap';


// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)
