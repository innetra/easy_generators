module FormHelper

  # Indicator for required fields
  def required_field
    content_tag :span, '*', :class => :required
  end

  # Give feedback if flash[:notice] or flash[:error] are present
  def feedback
    if flash.has_key?(:notice)
      shadowbox 'flash' do
        content_tag('div', content_tag('p', flash[:notice]), :class => 'notice')
      end
    end

    if flash.has_key?(:error)
      shadowbox 'flash' do
        content_tag('div', content_tag('p', flash[:error]), :class => 'error')
      end
    end
  end

end
