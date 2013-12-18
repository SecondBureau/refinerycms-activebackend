Refinery::Admin::PagesController.class_eval do
  def find_page
    @page = Refinery::Page.find_by_path_or_id(params[:path], params[:id])
    redirect_to refinery.admin_pages_path, :flash => {:error => t("refinery.pages.admin.errors.cannot_find")} if @page.nil?
    @page
  end
  alias_method :page, :find_page
end