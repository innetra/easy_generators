module LayoutHelper

  # Sets page title and browser title
  def title(page_title = nil, &block)
    content_for(:browser_title) { page_title } unless page_title.blank?
    if block_given?
      content_for(:title, capture(&block))
    else
      content_for(:title) { page_title }
    end
  end

  # Give feedback if flash[:notice] or flash[:error] are present
  def user_feedback()
    message = ''
    if flash.has_key?(:notice)
      message = content_tag('div', content_tag('div', content_tag('p',
        flash[:notice]), :class => 'content'), :id => 'flash')
    elsif flash.has_key?(:error)
      message = content_tag('div', content_tag('div', content_tag('p',
        flash[:error]), :class => 'content'), :id => 'flash', :class => 'error')
    else
      message = content_tag('div', '', :id => 'flash')
    end
    message
  end

end
