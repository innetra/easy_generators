module FormHelper

  # Indicator for required fields
  def required_field
    content_tag :span, '*', :class => :required
  end

end
