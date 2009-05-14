ActionView::Base.field_error_proc = Proc.new do |html_tag, instance_tag|
  "<span class='field_with_errors'>#{html_tag}</span>"
end

module ActionView::Helpers::ActiveRecordHelper
  # Returns a string containing the error message attached to the +method+ on the +object+ if one exists.
  # This error message is wrapped in a <tt>DIV</tt> tag, which can be extended to include a <tt>:prepend_text</tt>
  # and/or <tt>:append_text</tt> (to properly explain the error), and a <tt>:css_class</tt> to style it
  # accordingly. +object+ should either be the name of an instance variable or the actual object. The method can be
  # passed in either as a string or a symbol.
  # As an example, let's say you have a model <tt>@post</tt> that has an error message on the +title+ attribute:
  #
  #   <%= error_message_on "post", "title" %>
  #   # => <div class="formError">can't be empty</div>
  #
  #   <%= error_message_on @post, :title %>
  #   # => <div class="formError">can't be empty</div>
  #
  #   <%= error_message_on "post", "title",
  #       :prepend_text => "Title simply ",
  #       :append_text => " (or it won't work).",
  #       :css_class => "inputError" %>
  def error_message_on(object, method, *args)

    options = args.extract_options!

    unless args.empty?
      ActiveSupport::Deprecation.warn('error_message_on takes an option hash instead of separate ' +
        'prepend_text, append_text, and css_class arguments', caller)

      options[:prepend_text] = args[0] || ''
      options[:append_text] = args[1] || ''
      options[:css_class] = args[2] || 'form_error'
    end

    options.reverse_merge!(:prepend_text => '', :append_text => '', :css_class => 'form_error')

    if (obj = (object.respond_to?(:errors) ? object : instance_variable_get("@#{object}"))) &&
      (errors = obj.errors.on(method))
      content_tag("span",
        "#{options[:prepend_text]}#{ERB::Util.html_escape(errors.is_a?(Array) ? errors.first : errors)}#{options[:append_text]}",
        :class => options[:css_class]
      )
    else
      ''
    end

  end

end
