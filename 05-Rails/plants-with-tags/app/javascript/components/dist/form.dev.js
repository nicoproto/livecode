"use strict";

Object.defineProperty(exports, "__esModule", {
  value: true
});
exports.toggleForm = void 0;

var toggleForm = function toggleForm() {
  var button = document.querySelector('.toggle-form');
  var form = document.querySelector('#new_plant');
  button.addEventListener('click', function () {
    form.classList.toggle('d-none');
  });
};

exports.toggleForm = toggleForm;