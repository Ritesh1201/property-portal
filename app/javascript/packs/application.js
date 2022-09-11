// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")


var jQuery = require('jquery')
global.s = global.jQuery = jQuery;
window.s = window.jQuery = jQuery;

require('bootstrap')

import toastr from 'toastr';
toastr.options = {
  progressBar: true
}
global.toastr = toastr;

import {
  PropertyDetails
} from './properties'

window.PropertyDetails = PropertyDetails

// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)
