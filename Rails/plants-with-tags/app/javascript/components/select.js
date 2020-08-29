import $ from 'jquery';
import select2 from 'select2';

const multipleSelect = () => {
  // This line came from the documentation of select2
  $(document).ready(function() {
    $('.multiple-select').select2();
  });
}

export { multipleSelect };
