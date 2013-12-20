@init_ajaxy_pagination = ->
  if typeof (window.history.pushState) == "function" and $(".pagination_container").length > 0
    pagination_pages = $(".pagination a")
    pagination_pages.on "click", (e) ->
      current_page = $.url().param('page')
      target_page = $.url(@href).param('page')
      if target_page? && target_page != "0" && (current_page? && current_page != target_page || !current_page? && +target_page != 1)
        $(".pagination_container #loading").show()
        $(".pagination_container #thumbs").fadeTo(1000, 0.5)
        current_state_location = (location.pathname + location.href.split(location.pathname)[1])
        window.history.pushState path: current_state_location, "", @href
        $(document).paginateTo @href
      e.preventDefault()
      
$.fn.paginateTo = (stateUrl) -> 
  $.ajax ( 
    url: stateUrl
    cache: false
    error: (data) -> 
      history.back()
    success: (data) ->
      url = stateUrl.substring(0, stateUrl.indexOf('?'))
      current_page = parseInt($.url(stateUrl).param('page'))
      previous_href = url + $.query.load(stateUrl).set("page", current_page - 1).toString()
      next_href = url + $.query.load(stateUrl).set("page", current_page + 1).toString()
      $('.pagination li.previous_page a').attr('href', previous_href)
      $('.pagination li.next_page a').attr('href', next_href)
      $('.pagination_container').html(data).hide()
      $(".pagination_container").fadeTo(2000, 1)
      $('.pagination li').each (i, a) ->
        if +$(this).data("page") == +current_page 
          $(this).addClass('active')
        else
          $(this).removeClass('active')
      $('#thumbs a').touchTouch();
      $('#thumbs a').tooltip
        title: $(this).data("title")
  )



    
    
      
