Refinery::AdminHelper.module_eval do 
    def refinery_help_icon(title)
      "<i class=\"icon-info-sign\" title=\"#{title}\"></i>".html_safe
    end
end
