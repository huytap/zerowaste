/**
 * @license Copyright (c) 2003-2015, CKSource - Frederico Knabben. All rights reserved.
 * For licensing, see LICENSE.md or http://ckeditor.com/license
 */
 CKEDITOR.replace( 'editor1', {
     format_tags: 'p;h1;h2;h3;h4;h5;h6;pre;address;div;span'
 });
CKEDITOR.editorConfig = function( config ) {
  config.format_tags = 'p;h1;h2;h3;pre;span';
	// Define changes to default configuration here. For example:
	// config.language = 'fr';
	// config.uiColor = '#AADC6E';
};
