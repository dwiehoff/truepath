// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")


// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)


// ----------------------------------------------------
// Note(lewagon): ABOVE IS RAILS DEFAULT CONFIGURATION
// WRITE YOUR OWN JS STARTING FROM HERE 👇
// ----------------------------------------------------


// External imports
import "bootstrap";
require("jquery-ui");

// Internal imports, e.g:
// import { initSelect2 } from '../components/init_select2';
import { test } from '../packs/professions'
import { algorithm } from '../packs/questions'
import { fill_circles, setup_checkboxes } from '../packs/roadmap'

document.addEventListener('turbolinks:load', () => {
  // Call your functions here, e.g:
  // initSelect2();
  if (document.querySelector('.professions.index'))
    test();
  if (document.querySelector('.questions.index'))
    algorithm();
  if (document.querySelector('.professions.show')) {
    fill_circles();
    setup_checkboxes();
  }
});

const scrollButton = document.querySelector('#scroll-button');
if (scrollButton) {
  scrollButton.addEventListener('click',(event) => {
    document.querySelector('.circle.roadmap-order-3').scrollIntoView(true);
  });
}


