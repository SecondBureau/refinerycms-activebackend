$ ->

  #tooltips  
  #$('.no-tooltip').tooltip(gravity: 'n', fade: true, html:true)
  $('i.icon-info-sign').tooltip
    gravity: 'n', 
    fade: true, 
    html: true
  
  # $('#thumbs a').tooltip
  #   items: "[data-title], [data-desc]",
  #   content: -> 
  #     "title" + info.data("title") + "Description: " + info.data('desc')
  $('#thumbs a').tooltip
    title: $(this).data("title")
  

  #initialize the data tables
  $(".dTable").dataTable(
    bJQueryUI: false
    bAutoWidth: false
    sPaginationType: "full_numbers"
    sDom: "<\"table-header\"fl>t<\"table-footer\"ip>"
  )
  
  #tag inputs
  $('.tags').tagsInput(width:'100%');
  
  #Checkbox
  $('.icheck').iCheck
    checkboxClass: 'icheckbox_flat-aero'
    radioClass: 'iradio_flat-aero'
    
  #validation engine
  $("form.validatable").validationEngine
    promptPosition: "topLeft",
  
  #initialize photo gallery
  $('#thumbs a').touchTouch();
  
  #activate the datepicker
  $('.datepicker').datepicker
    changeMonth: true
    changeYear: true
    todayBtn: 'linked'
    autoclose: true
    todayHighlight: true
    language: 'fr-FR'
    format: "yyyy-mm-dd"
  
  # ckeditor
  $("textarea.wysiwyg").each ->
    CKEDITOR.replace this.id,
      language: $('html').attr('lang')
      bodyClass: $(this).data "body-class"
      removePlugins: 'placeholder'
      extraPlugins: 'imagebrowser'
      customConfig: '/assets/ckeditor-config.js'
      contentsCss: '/assets/ckeditor-config.css'
      stylesSet: 'activebackend:/assets/ckeditor-styles.js'
      imageBrowser_listUrl: "/refinery/images.json"