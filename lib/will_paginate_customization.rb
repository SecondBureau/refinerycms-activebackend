require "will_paginate/view_helpers/action_view"

module Activebackend
  class BoxHeaderLinkRenderer < WillPaginate::ActionView::LinkRenderer

  protected

    def page_number(page)
      tag(:li, link(page, page), class: page.eql?(current_page.to_i) ? "active" : "", "data-page" => page)
    end

    def previous_or_next_page(page, text, classname)
      tag(:li, link(text, page), class: classname)
    end

    def html_container(html)
      container_attributes.merge!(:class => container_attributes[:class] + " pagination-xs")
      tag(:ul, html, container_attributes)
    end
    
    def gap
      text = @template.will_paginate_translate(:page_gap) { '&hellip;' }
      tag(:li, link(text, "#"), class: "gap")
    end
   

  end
end