module SearchHelper

  def show_search_form(message = '', options = {})

    config = { :controller_name => controller_name, :action_name => action_name, :method => request.request_method }
    config[:controller_name] = options[:controller_name] if options.has_key?(:controller_name)
    config[:action_name] = options[:action_name] if options.has_key?(:action_name)
    config[:method] = options[:method] if options.has_key?(:method)

    content = content_tag(:span, "Buscar" + tag('br') +
      text_field_tag(:search, nil, :class => 'full_wide'), :class => 'big') + tag('br')

    content << content_tag(:span, message, :class => 'comment') unless message.empty?

    search_form = content_tag(:h1, content_tag(:form,
      content_tag(:p, content), :id => 'search_form'))

    search_form << observe_form('search_form',
      :url => url_for(:controller => config[:controller_name],
        :action => config[:action_name]), :method => config[:method],
        :frequency => 0.5)

  end

end
