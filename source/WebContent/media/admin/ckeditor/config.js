/**
 * @license Copyright (c) 2003-2017, CKSource - Frederico Knabben. All rights reserved.
 * For licensing, see LICENSE.md or http://ckeditor.com/license
 */

CKEDITOR.editorConfig = function( config ) {
	// Define changes to default configuration here. For example:
	config.language = 'vi';
	// config.uiColor = '#AADC6E';
	// config.filebrowserBrowseUrl = './ckfinder-1/ckfinder.html';
	config.filebrowserUploadUrl = './ckfinder/core/connector/php/connector.php?command=QuickUpload&type=Files';
	// config.filebrowserImageBrowseUrl = './ckfinder-1/ckfinder.html?type=Images';
	config.filebrowserImageUploadUrl = './ckfinder/core/connector/php/connector.php?command=QuickUpload&type=Images';
};
