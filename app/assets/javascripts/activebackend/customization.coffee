$ ->

  #tooltips  
  $('.no-tooltip').tooltip(gravity: 'n', fade: true, html:true)

  #initialize the data tables
  $(".dTable").dataTable(
    bJQueryUI: false
    bAutoWidth: false
    sPaginationType: "full_numbers"
    sDom: "<\"table-header\"fl>t<\"table-footer\"ip>"
  )
  
  #tag inputs
  $('.tags').tagsInput(width:'100%');
  
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