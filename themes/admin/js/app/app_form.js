CKEDITOR.editorConfig = function( config ) {
	config.allowedContent = true;

	// Set the most common block elements.
	config.format_tags = 'p;h1;h2;h3;h4;h5;h6;pre;span;a;div';

	// Simplify the dialog windows.
	config.removeDialogTabs = 'image:advanced;link:advanced';
};
CKEDITOR.replace( 'editor1', {
    format_tags: 'p;a;h1;h2;h3;h4;h5;h6;pre;address;div'
});
$(function()	{
	// Chosen
	if($(".chzn-select").length){
		$(".chzn-select").chosen();
	}

	// Datepicker
	if($('.datepicker').length){
		$('.datepicker').datepicker({dateFormat:'dd-mm-yy',autoclose: true}).on('changeDate', function (ev) {
		    $(this).datepicker('hide');
		});
	}
	// Timepicker
	$('.timepicker').timepicker();

	// Slider
	/*$('#sl1').slider();
	$('#sl2').slider();
	$('#sl3').slider();
	$('#sl4').slider();
	$('#sl5').slider();*/

	// Tags input
	if($('.tag').length){
		$('.tag').tagsInput({
			'height':'auto',
			'width':'90%'
		});
	}

	// Masked input
	/*$(".date").mask("99/99/9999");
	$(".phone").mask("(999) 999-9999");
	$(".ssn").mask("999-99-9999");
	$(".eyescript").mask("~9.99 ~9.99 999");
	$(".product-key").mask("a*-999-a999");*/

	// Wysihtml5
	if($('.wysihtml5-textarea')){
		$('.wysihtml5-textarea').wysihtml5();
	}

	// Toggle border of control group
	$('#toggleLine').click(function()	{
		if($(this).is(':checked'))	{
			$('#formToggleLine').addClass('form-border');
		}
		else	{
			$('#formToggleLine').removeClass('form-border');
		}
	});

	// Draggable Multiselect
	$('#btnSelect').click(function()	{

		$('#selectedBox1 option:selected').appendTo('#selectedBox2');
		return false;
	});

	$('#btnRemove').click(function()	{
		$('#selectedBox2 option:selected').appendTo('#selectedBox1');
		return false;
	});

	$('#btnSelectAll').click(function()	{

		$('#selectedBox1 option').each(function() {
           $(this).appendTo('#selectedBox2');
        });

		return false;
	});

	$('#btnRemoveAll').click(function()	{

		$('#selectedBox2 option').each(function() {
			$(this).appendTo('#selectedBox1');
        });

		return false;
	});
});
