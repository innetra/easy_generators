module LayoutHelper

  # Change browsers title
  def title(page_title)
    content_for(:title) { page_title }
  end

end
