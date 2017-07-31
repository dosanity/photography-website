module DefaultPageContent
  extend ActiveSupport::Concern
  
  included do
    before_action :set_page_defaults
  end
  
  def set_page_defaults
    @page_title = "Anthony Do | Photography"
    @seo_keywords = "Anthony Do Portfolio"
  end
end