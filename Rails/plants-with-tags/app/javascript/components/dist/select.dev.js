"use strict";

Object.defineProperty(exports, "__esModule", {
  value: true
});
exports.multipleSelect = void 0;

var _jquery = _interopRequireDefault(require("jquery"));

var _select = _interopRequireDefault(require("select2"));

function _interopRequireDefault(obj) { return obj && obj.__esModule ? obj : { "default": obj }; }

var multipleSelect = function multipleSelect() {
  // This line came from the documentation of select2
  (0, _jquery["default"])(document).ready(function () {
    (0, _jquery["default"])('.multiple-select').select2();
  });
};

exports.multipleSelect = multipleSelect;